package compiler.AST;

public class IntegerNode extends Literal {
    private int value;

    public IntegerNode(int value) {
        super(PrimitiveTypeEnum.INT);
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    @Override
    public String toString() {
        return value + "";
    }
}
