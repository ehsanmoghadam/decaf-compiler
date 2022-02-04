package compiler.AST;

public class StringNode extends Literal {
    private String value;

    public StringNode(String value) {
        super(PrimitiveTypeEnum.STRING);
        this.value = value;
    }
    
    public String getValue() {
        return value;
    }
    
    @Override
    public String toString() {
        return value+"";
    }
}
