package compiler.Vtable;

import compiler.AST.*;
import compiler.codegenerator.*;

import java.util.ArrayList;
import java.util.List;

public class VtableGenerator implements VisitorInterface {

    public static List<Function> functions = new ArrayList<>();
    public static List<ClassDecaf> classes = new ArrayList<>();
    SymbolTable symbolTable = new SymbolTable();

    @Override
    public void visit(AbstractSyntaxTreeNodeInterface node) throws Exception {
        switch (node.getNodeType()) {
            case BOOLEAN:
                node.setSymbolInfo(new SymbolInformation(node, PrimitiveTypeEnum.BOOL));
                node.getSymbolInfo().setDimensionArray(node.getChildren().size());
                break;
            case DOUBLE:
                node.setSymbolInfo(new SymbolInformation(node, PrimitiveTypeEnum.DOUBLE));
                node.getSymbolInfo().setDimensionArray(node.getChildren().size());
                break;
            case INTEGER:
                node.setSymbolInfo(new SymbolInformation(node, PrimitiveTypeEnum.INT));
                node.getSymbolInfo().setDimensionArray(node.getChildren().size());
                break;
            case STRING:
                node.setSymbolInfo(new SymbolInformation(node, PrimitiveTypeEnum.STRING));
                node.getSymbolInfo().setDimensionArray(node.getChildren().size());
                break;
            case VOID:
                node.setSymbolInfo(new SymbolInformation(node, PrimitiveTypeEnum.VOID));
                node.getSymbolInfo().setDimensionArray(node.getChildren().size());
                break;
            case ID:
                IDNode idNode = (IDNode) node;
                node.setSymbolInfo(new SymbolInformation(node, new IdentifierTypeInterface(idNode.getValue())));
                node.getSymbolInfo().setDimensionArray(node.getChildren().size());
                break;
            case METHOD:
                visitMethodDeclarationNode(node);
                break;
            case ARGUMENTS:
                visitArgumentsNode(node);
                break;
            case START:
                visitStartNode(node);
                break;
            case VARIABLE:
                visitVariableDeclaration(node);
                break;
            case ClASS_INVOCATION:
                visitClassDeclaration(node);
                break;
            case FIELD:
                visitFieldDeclaration(node);
                break;
            default:
                visitAllChildren(node);
        }
    }

    private void visitFieldDeclaration(AbstractSyntaxTreeNodeInterface node) throws Exception {
        AccessMode accessMode = AccessMode.Public;
        if (node.getChild(0).getNodeType().equals(NodeType.ACCESSMETHOD)) {
            switch (node.getChild(0).getChild(0).getNodeType()) {
                case PRIVATE:
                    accessMode = AccessMode.Private;
                    break;
                case PUBLIC:
                    accessMode = AccessMode.Public;
                    break;
                /*case PROTECTED_ACCESS:
                    accessMode = AccessMode.Protected;
                    break;*/
            }
            node.getChild(1).accept(this);
        } else
            node.getChild(0).accept(this);

    }

    private void visitClassDeclaration(AbstractSyntaxTreeNodeInterface node) throws Exception {
        //identifier
        IDNode idNode = (IDNode) node.getChild(0);
        String className = idNode.getValue();
        ClassDecaf classDecaf = new ClassDecaf(className);
        /*if (node.getChild(1).getNodeType().equals(NodeType.EXTEND)) {
            IdentifierNode idNode1 = (IdentifierNode) node.getChild(1).getChild(0);
            classDecaf.setParentClassName(idNode1.getValue());
        }*/
        ClassDecaf.currentClass = classDecaf;
        classes.add(classDecaf);
        symbolTable.enterScope(classDecaf.getName());
        if (node.getChild(node.getChildren().size() - 1).getNodeType().equals(NodeType.FIELDS)) {
            node.getChild(node.getChildren().size() - 1).accept(this);
            ClassDecaf.currentClass.setObjectSize(ClassDecaf.currentClass.getFields().size() * 4);
        }
        symbolTable.leaveCurrentScope();

    }

    private void visitVariableDeclaration(AbstractSyntaxTreeNodeInterface node) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        //identifier
        IDNode idNode = (IDNode) node.getChild(1);
        String fieldName = idNode.getValue();
        if (ClassDecaf.currentClass != null) {
            if (symbolTable.getCurrentScopeName().equals(ClassDecaf.currentClass.getName())) {
                Field field = new Field(fieldName);
                field.setSymbolInfo(node.getSymbolInfo());
                field.setAccessMode(Field.getCurrentAccessMode());
                field.setClassDecaf(ClassDecaf.currentClass);
                if (ClassDecaf.currentClass.getFields().contains(field))
                    throw new Exception(fieldName + " declared before");
                else
                    ClassDecaf.currentClass.getFields().add(field);
            }
        }
//        symbolTable.enterScope(label);
//        node.getChild(2).accept(this);
//        symbolTable.leaveCurrentScope();
//        if (symbolTable.getCurrentScopeName().equals("global")) {
//            method.setAccessMode(AccessMode.Public);
//        } else {
//            method.setAccessMode(Field.currentAccessMode);
//            ClassDecaf.currentClass.getMethods().add(method);
//        }
    }

    private void visitStartNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        symbolTable.enterScope("global");
        visitAllChildren(node);
        boolean isMainExist = false;
        for (Function function : functions) {
            if (function.getName().equals("main") && function.getScope().getName().equals("global")) {
                if (function.getArgumentsType().isEmpty() && function.getReturnType().getType().getAlign() == 4) {
                    isMainExist = true;
                    break;
                }
            }
        }
        /*if (!isMainExist)
            throw new Exception("main does not exist");*/
        for (ClassDecaf aClass : classes) {
            if (!aClass.getParentClassName().equals("")) {
                for (ClassDecaf bclassDecaf : classes) {
                    if (aClass.getParentClassName().equals(bclassDecaf.getName())) {
                        aClass.setParentClass(bclassDecaf);
                        for (Field field : bclassDecaf.getFields()) {
                            if (aClass.getFields().contains(field))
                                throw new Exception("the variable declared in parent class");
                            else
                                aClass.getFields().addAll(bclassDecaf.getFields());
                        }

                    }
                }
                if (aClass.getParentClass() == null)
                    throw new Exception("parent does not exist");
            }
        }
    }

    private void visitMethodDeclarationNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        node.getChild(0).accept(this); //Type
        SymbolInformation returnType = node.getChild(0).getSymbolInfo();

        //identifier
        IDNode idNode = (IDNode) node.getChild(1);
        String methodName = idNode.getValue();
        Function method = new Function(methodName, returnType, symbolTable.getCurrentScope());
        if (functions.contains(method)) {
            throw new Exception(methodName + " function declared before");
        }
        functions.add(method);

        Function.currentFunction = method;
        String label = symbolTable.getCurrentScopeName() + "_" + methodName;
        symbolTable.enterScope(label);
        node.getChild(2).accept(this);
        symbolTable.leaveCurrentScope();
        if (symbolTable.getCurrentScopeName().equals("global")) {
            method.setAccessMode(AccessMode.Public);
        } else {
            method.setAccessMode(Field.currentAccessMode);
            ClassDecaf.currentClass.getMethods().add(method);
        }
    }

    private void visitArgumentsNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        int argumentsLen = node.getChildren().size() * (-4);
        Function function = Function.currentFunction;
        for (int i = argumentsLen / (-4); i >= 1; i--) {
            AbstractSyntaxTreeNodeInterface ArgumentNode = node.getChild(i - 1);
            ArgumentNode.accept(this);
            function.getArgumentsType().add(ArgumentNode.getChild(0).getSymbolInfo());
        }
    }

    private void visitAllChildren(AbstractSyntaxTreeNodeInterface node) throws Exception {
        for (AbstractSyntaxTreeNodeInterface child : node.getChildren()) {
            child.accept(this);
        }
    }

    private void setParentSymbolInfo(AbstractSyntaxTreeNodeInterface node, AbstractSyntaxTreeNodeInterface child) throws Exception {
        child.accept(this);
        TypeInterface typeInterface = child.getSymbolInfo().getType();
        SymbolInformation si = new SymbolInformation(node, typeInterface);
        si.setDimensionArray(child.getSymbolInfo().getDimensionArray());
        node.setSymbolInfo(si);
    }
}
