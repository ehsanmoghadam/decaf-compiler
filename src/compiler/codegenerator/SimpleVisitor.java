package compiler.codegenerator;

import compiler.AST.ASTNode;

public interface SimpleVisitor {
    void visit(ASTNode node) throws Exception;
}
