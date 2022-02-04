package compiler.AST;


import compiler.codegenerator.VisitorInterface;
import compiler.codegenerator.SymbolInformation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class DefaultAbstractSyntaxTreeNode implements AbstractSyntaxTreeNodeInterface {
    private List<AbstractSyntaxTreeNodeInterface> children = new ArrayList<>();
    private AbstractSyntaxTreeNodeInterface parent;
    private NodeType nodeType;
    SymbolInformation symbolInformation;

    public DefaultAbstractSyntaxTreeNode(NodeType nodeType) {
        this.nodeType = nodeType;
    }

    public NodeType getNodeType() {
        return nodeType;
    }

    public void setSymbolInfo(SymbolInformation si) {
        this.symbolInformation = si;
    }

    public SymbolInformation getSymbolInfo() {
        return symbolInformation;
    }

    @Override
    public String toString() {
        String str = nodeType.toString();

        if (symbolInformation != null) {
            str += " (" + symbolInformation.toString() + ")";
        }

        return str;
    }

    @Override
    public void accept(VisitorInterface visitor) throws Exception {
        visitor.visit(this);
    }

    @Override
    public void addChild(AbstractSyntaxTreeNodeInterface node) {
        children.add(node);
    }

    @Override
    public void addChild(int index, AbstractSyntaxTreeNodeInterface node) {
        children.add(index, node);
    }

    @Override
    public void addChildren(List<AbstractSyntaxTreeNodeInterface> nodes) {
        children.addAll(nodes);
    }

    @Override
    public void addChild(AbstractSyntaxTreeNodeInterface... nodes) {
        Collections.addAll(children, nodes);
    }

    @Override
    public void setChildren(AbstractSyntaxTreeNodeInterface... nodes) {
        children = Arrays.asList(nodes);
    }

    @Override
    public AbstractSyntaxTreeNodeInterface getChild(int index) {
        return children.get(index);
    }

    @Override
    public List<AbstractSyntaxTreeNodeInterface> getChildren() {
        return children;
    }

    @Override
    public AbstractSyntaxTreeNodeInterface getParent() {
        return parent;
    }

    @Override
    public void setParent(AbstractSyntaxTreeNodeInterface parent) {
        this.parent = parent;
    }
}
