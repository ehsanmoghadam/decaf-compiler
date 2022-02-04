package compiler.codegenerator;

import compiler.AST.AbstractSyntaxTreeNodeInterface;

public interface VisitorInterface {
    void visit(AbstractSyntaxTreeNodeInterface node) throws Exception;
}
