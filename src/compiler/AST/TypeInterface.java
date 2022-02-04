package compiler.AST;

public interface TypeInterface {
    String getSignature();

    int getAlign();

    PrimitiveTypeEnum getPrimitive();
}