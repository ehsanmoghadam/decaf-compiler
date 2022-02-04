package compiler.AST;

public class IdentifierTypeInterface implements TypeInterface {
    private String signature;
    private int align = 10;

    public IdentifierTypeInterface(String signature) {
        this.signature = signature;
    }

    @Override
    public String getSignature() {
        return signature;
    }

    @Override
    public int getAlign() {
        return align;
    }

    @Override
    public PrimitiveTypeEnum getPrimitive() {
        return null;
    }

}
