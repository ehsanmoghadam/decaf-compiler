package compiler.AST;

public class BooleanNode extends Literal {
    private boolean value;

    public BooleanNode(boolean value) {
        super(PrimitiveTypeEnum.BOOL);
        this.value = value;
    }

    public boolean getValue() {
        return value;
    }

    @Override
    public String toString() {
        return value + "";
    }
}
