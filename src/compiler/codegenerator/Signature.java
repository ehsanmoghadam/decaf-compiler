package compiler.codegenerator;

import compiler.AST.TypeInterface;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

class Argument {
    TypeInterface typeInterface;
    String name;

    Argument(TypeInterface typeInterface, String name) {
        this.typeInterface = typeInterface;
        this.name = name;
    }

    public TypeInterface getType() {
        return typeInterface;
    }

    public String getName() {
        return name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Argument argument = (Argument) o;
        return Objects.equals(name, argument.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(typeInterface, name);
    }
}

public class Signature {
    TypeInterface returnTypeInterface;
    String name;
    List<Argument> args = new ArrayList<>();

    Signature(TypeInterface returnTypeInterface, String name) {
        this.returnTypeInterface = returnTypeInterface;
        this.name = name;
    }

    void addArgs(List<Argument> arguments) {
        args.addAll(arguments);
    }

    TypeInterface getReturnType() {
        return returnTypeInterface;
    }

    public String getName() {
        return name;
    }

    List<Argument> getArgs() {
        return args;
    }

//    boolean checkArguments(Signature signature) {
//        Argument[] args1 = args.toArray(new Argument[0]);
//        Argument[] args2 = signature.args.toArray(new Argument[0]);
//        if (args1.length != args2.length)
//            return false;
//        for (int i = 0; i < args1.length; i++)
//            try {
//                ExpressionNode e=new ExpressionNode();
//                e.setType(args2[i].getType());
//                new CodeGenVisitor(new PrintStream("")).cast(args1[i].getType().getPrimitive(),e);
//            } catch (Exception e) {
//                return false;
//            }
//
//        return true;
//    }

//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        Signature signature = (Signature) o;
//
//        return Objects.equals(name, signature.name) &&
//                checkArguments(signature);
//    }

    @Override
    public int hashCode() {
        return Objects.hash(returnTypeInterface, name, args.size());
    }
}