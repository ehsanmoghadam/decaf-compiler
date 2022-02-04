package compiler.AST;

public class TypeNode extends DefaultAbstractSyntaxTreeNode {
    private TypeInterface typeInterface;

    public TypeNode(NodeType nodeType, TypeInterface typeInterface) {
        super(nodeType);
        this.typeInterface = typeInterface;
    }

    public TypeInterface getType() {
        return typeInterface;
    }
}
