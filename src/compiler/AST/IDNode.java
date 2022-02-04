package compiler.AST;

public class IDNode extends DefaultAbstractSyntaxTreeNode {
    private String value;

    public IDNode(String value) {
        super(NodeType.ID);
        this.value = value;
    }


    public String getValue() {
        return value;
    }

    @Override
    public String toString() {
        return "%" + value;
    }
}
