

import compiler.AST.Program;
import compiler.Laxer;
import compiler.Lexer;
import compiler.Vtable.VtableGenerator;
import compiler.codegenerator.CodeGenVisitor;
import compiler.parser;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.*;

public class Main {

    public static boolean run(File inputFile) throws Exception {
        /*StringBuilder str = new StringBuilder();*/
        Lexer lexer = new Lexer(inputFile);
        List<String> lines = lexer.handle_define();
        StringBuilder str = new StringBuilder();
        for(String s : lines){
            str.append(s).append("\n");
        }
//        System.out.println(str.toString());
        StringReader fileReader = new StringReader(str.toString());
//        FileReader fileReader = new FileReader(inputFile);
        Laxer laxer = new Laxer(fileReader);
        parser parser = new parser(laxer);
        System.err.close();
        try {
            parser.parse();
            System.out.println("OK");
            return true;
        } catch (Exception e) {
            System.out.println("Syntax error");
//            e.printStackTrace();
//            System.out.println(e);
//            System.out.println(Arrays.toString(e.getStackTrace()));
            return false;
        }
        /*List<String> tokens = lexer.lexicalAnalysis();
        for (String token: tokens){
            str.append(token).append("\n");
        }
        return str.toString();*/

    }

    public static void main(String[] args) throws Exception {
        if (args.length < 4) {
            System.out.println("Usage: java Main -i <input> -o <output>");
            return;
        }
        String inputFileName = null;
        String outputFileName = null;
        if (args != null) {
            for (int i = 0; i < args.length; i++) {
                if (args[i].equals("-i")) {
                    inputFileName = args[i + 1];
                }
                if (args[i].equals("-o")) {
                    outputFileName = args[i + 1];
                }
            }
        }
        String outputPath = "out/" + outputFileName;
        createFile(outputPath);

        // Read the input file and write to the output file.
        Lexer lexer = new Lexer(new File(inputFileName));
        List<String> lines = lexer.handle_define();
        StringBuilder str = new StringBuilder();
        for(String s : lines){
            str.append(s).append("\n");
        }
        StringReader fileReader = new StringReader(str.toString());
        Laxer laxer = new Laxer(fileReader);
        parser parser = new parser(laxer);
//        System.err.close();
        try {
            parser.parse();
//            System.out.println("parser done");
        } catch (Exception e) {
            String[] out = {".data",
                    "\terror: .asciiz \"Syntax Error\"",
                    ".text","\t.globl main\n",
                    "\tmain:",
                    "\t\tli $v0, 4",
                    "\t\tla $a0, error",
                    "\t\tsyscall",
                    "\t\t#END OF PROGRAM",
                    "\t\tli $v0,10\n\t\tsyscall"};
            writeContentToFile(outputPath,out);
//            System.out.println("Syntax Error");
//            String[] out = {"Syntax Error"};
//            writeContentToFile(outputPath, out);
            return;
//            e.printStackTrace();
//            System.out.println(e);
//            System.out.println(Arrays.toString(e.getStackTrace()));
        }
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            PrintStream writer = new PrintStream(baos, true, StandardCharsets.UTF_8.name());
            Program cu = parser.getRoot();
//            System.out.println("in type visitor");
            cu.accept(new VtableGenerator());
//            System.out.println("TV done");
//            System.out.println("in code gen");
            cu.accept(new CodeGenVisitor(writer));
            writer.flush();
            String[] out = {baos.toString(StandardCharsets.UTF_8.name())};
            writeContentToFile(outputPath, out);
//            System.out.println("CG done");
        }catch (Exception e){
            String[] out = {".data",
                    "\terror: .asciiz \"Semantic Error\"",
                    ".text","\t.globl main\n",
                    "\tmain:",
                    "\t\tli $v0, 4",
                    "\t\tla $a0, error",
                    "\t\tsyscall",
                    "\t\t#END OF PROGRAM",
                    "\t\tli $v0,10\n\t\tsyscall"};
            e.printStackTrace();
            System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
            System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
            System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
            System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
            writeContentToFile(outputPath,out);
//            e.printStackTrace();
//            String[] out = {"Semantic Error"};
//            writeContentToFile(outputPath, out);
//            System.out.println("Semantic Error");
            return;
        }



    }

    private static boolean createFile(String path) {
        File file = new File(path);
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static void writeContentToFile(String path, String[] lines) {
        try (FileWriter writer = new FileWriter(new File(path))) {
            String content = String.join("\n", lines);
            writer.write(content);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}