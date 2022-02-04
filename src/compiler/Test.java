package compiler;

import compiler.AST.Start;
import compiler.Vtable.VtableGenerator;
import compiler.codegenerator.CodeGeneratorVisitor;

import java.io.*;
import java.util.Arrays;
import java.util.List;

public class Test {
    public static void main(String[] args) throws Exception {
        File file = new File("D:\\code\\java\\Comp\\src\\test.txt");
        /*Main.run(file);*/
        Lexer lexer = new Lexer(file);
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
            System.out.println("parser done");
        } catch (Exception e) {
            System.out.println("Syntax Error");
            System.out.println(Arrays.toString(e.getStackTrace()));
//            e.printStackTrace();
            return;
//            e.printStackTrace();
//            System.out.println(e);
        }
        try {
            String outputFile = "D:\\code\\java\\Comp\\src\\compiler\\test_out.txt";
            PrintStream writer = new PrintStream(outputFile);
            Start start = parser.getRoot();
            System.out.println("in type visitor");
            start.accept(new VtableGenerator());
            System.out.println("TV done");
            System.out.println("in code gen");
            start.accept(new CodeGeneratorVisitor(writer));
            writer.flush();
            System.out.println("CG done");
        }catch (Exception e){
//            e.printStackTrace();
//            System.out.println("Semantic Error");
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
            writeContentToFile("D:\\code\\java\\Comp\\src\\compiler\\test_out.txt",out);
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
