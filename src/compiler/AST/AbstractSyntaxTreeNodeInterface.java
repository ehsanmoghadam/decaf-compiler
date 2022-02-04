package compiler.AST;

import compiler.codegenerator.VisitorInterface;
import compiler.codegenerator.SymbolInformation;

import java.util.List;

public interface AbstractSyntaxTreeNodeInterface {
    NodeType getNodeType();

    void setSymbolInfo(SymbolInformation si);

    SymbolInformation getSymbolInfo();

    void accept(VisitorInterface visitor) throws Exception;

    void addChild(AbstractSyntaxTreeNodeInterface node);

    void addChild(int index, AbstractSyntaxTreeNodeInterface node);

    void addChildren(List<AbstractSyntaxTreeNodeInterface> nodes);

    void addChild(AbstractSyntaxTreeNodeInterface... nodes);

    void setChildren(AbstractSyntaxTreeNodeInterface... nodes);

    List<AbstractSyntaxTreeNodeInterface> getChildren();

    AbstractSyntaxTreeNodeInterface getChild(int index);

    void setParent(AbstractSyntaxTreeNodeInterface parent);

    AbstractSyntaxTreeNodeInterface getParent();
}