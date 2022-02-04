package compiler.AST;

public class DoubleNode extends Literal {
    private float value;

    public DoubleNode(float value) {
        super(PrimitiveTypeEnum.DOUBLE);
        this.value = value;
    }

    public float getValue() {
        return value;
    }

    @Override
    public String toString() {
        return value + "";
    }
}
