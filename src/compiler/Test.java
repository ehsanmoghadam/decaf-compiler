package compiler;

import compiler.AST.Program;
import compiler.Vtable.VtableGenerator;
import compiler.codegenerator.CodeGenVisitor;

import java.io.File;
import java.io.PrintStream;
import java.io.StringReader;
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
            return;
//            e.printStackTrace();
//            System.out.println(e);
//            System.out.println(Arrays.toString(e.getStackTrace()));
        }
        try {
            String outputFile = "D:\\code\\java\\Comp\\src\\compiler\\test_out.txt";
            PrintStream writer = new PrintStream(outputFile);
            Program cu = parser.getRoot();
            System.out.println("in type visitor");
            cu.accept(new VtableGenerator());
            System.out.println("TV done");
            System.out.println("in code gen");
            cu.accept(new CodeGenVisitor(writer));
            writer.flush();
            System.out.println("CG done");
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Semantic Error");
        }
    }
}
