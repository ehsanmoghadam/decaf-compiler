package compiler.AST;

public class Literal extends DefaultAbstractSyntaxTreeNode {
    private PrimitiveTypeEnum type;

    public Literal(PrimitiveTypeEnum type) {
        super(NodeType.LITERAL);
        this.type = type;
    }

    public PrimitiveTypeEnum getType() {
        return type;
    }
}
