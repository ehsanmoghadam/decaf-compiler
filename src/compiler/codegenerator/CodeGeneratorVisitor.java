package compiler.codegenerator;

import compiler.AST.*;
import compiler.Vtable.*;

import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Stack;

public class CodeGeneratorVisitor implements VisitorInterface {
    PrintStream stream;
    int tempfRegsNumber = 0;
    List<ClassDecaf> classes = VtableGenerator.classes;
    int tempLiteralCounter = 0;
    List<Function> functions = VtableGenerator.functions;
    SymbolTable symbolTable = new SymbolTable();
    int labelIndex;
    int blockIndex;
    private Stack<String> labels = new Stack<>();
    int tempRegsNumber = 8;
    int arrayNumbers = 0;
    int DtoItoBLabel = 0;
    int tempLabelCounter = 0;
    HashMap<String, String> stringLiterals = new HashMap<>();
    List<String> regs = Arrays.asList("$zero", "$at", "$v0", "$v1", "$a0", "$a1", "$a2", "$a3", "$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7", "$s0", "$s1", "$s2", "$s3", "$s4", "$s5", "$s6", "$t7", "$t8", "$t9", "$k0", "$k1", "$gp", "$sp", "fp", "ra");
    List<String> fregs = Arrays.asList("$f0", "$f1", "$f2", "$f3", "$f4", "$f5", "$f6", "$f7", "$f8", "$f9", "$f10", "$f11", "$f12", "$f13", "$f14", "$f15", "$f16", "$f17", "$f18", "$f19", "$f20", "$f21", "$f22", "$f23", "$f24", "$f25", "$f26", "$f27", "$f28", "$f29", "$f30", "$f31");
    static String dataSegment = ".data \n\ttrue: .asciiz \"true\"\n\tfalse : .asciiz \"false\"\n\n";
    static String textSegment = "";

    public CodeGeneratorVisitor(PrintStream stream) {
        this.stream = stream;
    }

    @Override
    public void visit(AbstractSyntaxTreeNodeInterface node) throws Exception {
        switch (node.getNodeType()) {
            case ADD:
                visitAdditionNode(node);
                break;
            case SUB:
                visitSubtractionNode(node);
                break;
            case MUL:
                visitMultiplicationNode(node);
                break;
            case DIV:
                visitDivisionNode(node);
                break;
            case MOD:
                visitModNode(node);
                break;
            case MINUS:
                visitNegative(node);
                break;
            case READINTEGER:
                visitReadIntegerNode(node);
                break;
            case READ_LINE:
                visitReadLine(node);
                break;
            case NEWARRAY:
                visitNewArrayNode(node);
                break;
            case NEW:
                break;
            case ITOB:
                visitItoB(node);
                break;
            case ITOD:
                visitItoD(node);
                break;
            case DTOI:
                visitDtoI(node);
                break;
            case BTOI:
                visitBtoI(node);
                break;
            case LVALUE:
                visitLValueNode(node);
                break;
            case CALL:
                visitCallNode(node);
                break;
            case EMPTYARRAY:
                break;
            case LESSTHAN:
                visitLessThanNode(node);
                break;
            case LESSTHANOREQUAL:
                visitLessThanEqualNode(node);
                break;
            case GREATERTHAN:
                visitGreaterThanNode(node);
                break;
            case GREATERTHANOREQUAL:
                visitGreaterThanEqualNode(node);
                break;
            case EQUAL:
                visitEqualNode(node);
                break;
            case NOTEQUAL:
                visitNotEqualNode(node);
                break;
            case BOOLEANAND:
                visitAndNode(node);
                break;
            case BOOLEANNOT:
                visitNotNode(node);
                break;
            case BOOLEANOR:
                visitOrNode(node);
                break;
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
            case FIELD:
                //TODO
                visitAllChildren(node);
                break;
            case VARIABLE:
                visitVariableDeclaration(node);
                break;
            case METHOD:
                visitMethodDeclarationNode(node);
                break;
            case ClASS_INVOCATION:
                visitClassDeclarationNode(node);
                break;
            case ASSIGN:
                visitAssignNode(node);
                break;
            case STATEMENT:
                visitStatementNode(node);
                break;
            case STATEMENTS:
                visitStatementsNode(node);
                break;
            case EXPR:
                visitExpressionNode(node);
                break;
            case BREAK:
                visitBreakNode(node);
                break;
            case CONTINUE:
                visitContinueNode(node);
                break;
            case RETURN:
                visitReturnNode(node);
                break;
            case IF:
                visitIfStatement(node);
                break;
            case FOR:
                visitForNode(node);
                break;
            case WHILE:
                visitWhileNode(node);
                break;
            case PRINT:
                visitPrintNode(node);
                break;
            case LITERAL:
                visitLiteralNode(node);
                break;
            case ARGUMENT:
                break;
            case ARGUMENTS:
                visitArgumentsNode(node);
                break;
            case EMPTYSTATEMENT:
                break;
            case ID:
                IDNode idNode = (IDNode) node;
                node.setSymbolInfo(new SymbolInformation(node, new IdentifierTypeInterface(idNode.getValue())));
                node.getSymbolInfo().setDimensionArray(node.getChildren().size());
                break;
            case ACCESSMETHOD:
                break;
            case PRIVATE:
                break;
            case PUBLIC:
                break;
            case VARIABLES:
                visitAllChildren(node);
                break;
            case ACTUALS:
                break;
            case PARAMETER:
                break;
            case PARAMETERS:
                break;
            case BLOCK:
                visitBlockNode(node);
                break;
            case VARINVOCATION:
                break;
            case CLASS:
                visitClassDeclarationNode(node);
                break;
            case NULL:
                break;
            case FIELDS:
                visitAllChildren(node);
                break;
            case EXPRESSIONS:
                visitAllChildren(node);
                break;
            case START:
                visitStartNode(node);
                break;
            default:
                visitAllChildren(node);
        }
    }

    private void visitReadLine(AbstractSyntaxTreeNodeInterface node) {
        String label = "userInput_" + labelGenerator();
        dataSegment += "\t" + label + ":\t.space\t600\n";
        SymbolInformation si = new SymbolInformation(node, PrimitiveTypeEnum.INPUTSTRING);
        node.setSymbolInfo(si);
        textSegment += "\t\tli $v0, 8\n\t\tla $a0, " + label + "\n\t\tli $a1, 600\n\t\tsyscall\n";
        textSegment += "\t\tmove $t0, $a0\n\n";
    }


    private void visitContinueNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        if (labels.peek().charAt(labels.peek().length() - 1) == 'F') {
            textSegment += "\t\tj " + labels.peek() + "update\n";
        } else {
            textSegment += "\t\tj " + labels.peek() + "\n";
        }
    }


    private void visitBreakNode(AbstractSyntaxTreeNodeInterface node) {
        textSegment += "\t\tj exit" + labels.peek() + "\n";
    }

    private void visitBtoI(AbstractSyntaxTreeNodeInterface node) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        if (!(node.getChild(0).getSymbolInfo().getType().getAlign() == 1)) {
            throw new Exception("Invalid type for " + node.getNodeType().toString() + " operation");
        }
        node.getSymbolInfo().setType(PrimitiveTypeEnum.INT);
    }


    private void visitItoB(AbstractSyntaxTreeNodeInterface node) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        if (!(node.getChild(0).getSymbolInfo().getType().getAlign() == 4)) {
            throw new Exception("Invalid type for " + node.getNodeType().toString() + " operation");
        }
        textSegment += "\t\tbeq $t0 ,0 ItoB" + DtoItoBLabel + "\n";

        textSegment += "\t\tli $t0, 1\n";
        textSegment += "\t\tj exit_ItoB" + DtoItoBLabel + "\n";

        textSegment += "ItoB" + DtoItoBLabel + ":\n";
        textSegment += "\t\tli $t0, 0\n";

        textSegment += "exit_ItoB" + (DtoItoBLabel++) + ":\n";


        node.getSymbolInfo().setType(PrimitiveTypeEnum.BOOL);
    }


    private void visitDtoI(AbstractSyntaxTreeNodeInterface node) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        if (!(node.getChild(0).getSymbolInfo().getType().getAlign() == 8)) {
            throw new Exception("Invalid type for " + node.getNodeType().toString() + " operation");
        }


        node.getSymbolInfo().setType(PrimitiveTypeEnum.INT);


        textSegment += "\t\ts.s $f1, 0($sp)\n";
        textSegment += "\t\taddi $sp, $sp, 4\n";
        textSegment += "\t\ts.s $f2, 0($sp)\n";
        textSegment += "\t\taddi $sp, $sp, 4\n";


        textSegment += "\t\tmov.s $f1, $f0\n";
        textSegment += "\t\tcvt.w.s $f1, $f1\n";

        textSegment += "\t\tmfc1 $t0 $f1\n";
        textSegment += "\t\tmtc1 $t0 $f1\n";
        textSegment += "\t\tcvt.s.w $f1 $f1\n";


        textSegment += "\t\tsub.s $f1, $f0, $f1\n";


        //textSegment += "\t\tli.s $f2, 0.5\n";
        dataSegment += "\t" + symbolTable.getCurrentScopeName() + "_temp" + tempLiteralCounter + ": .float " + "0.5" + "\n";
        textSegment += "\t\tla $a0, " + symbolTable.getCurrentScopeName() + "_temp" + (tempLiteralCounter++) + '\n';
        textSegment += "\t\tl.s $f2, 0($a0)\n";


        textSegment += "\t\tc.eq.s $f1 $f2\n";
        textSegment += "\t\tbc1t " + "half_DtoI" + DtoItoBLabel + "\n";
        textSegment += "\t\tbc1f " + "nhalf_DtoI" + DtoItoBLabel + "\n";


        textSegment += "half_DtoI" + DtoItoBLabel + ":\n";
        textSegment += "\t\tceil.w.s $f0 $f0\n";
        textSegment += "\t\tmfc1 $t0 $f0\n";
        textSegment += "\t\tj exit_DtoI" + DtoItoBLabel + "\n";


        textSegment += "nhalf_DtoI" + DtoItoBLabel + ":\n";


        //textSegment += "\t\tli.s $f3, -0.5\n";
        dataSegment += "\t" + symbolTable.getCurrentScopeName() + "_temp" + tempLiteralCounter + ": .float " + "-0.5" + "\n";
        textSegment += "\t\tla $a0, " + symbolTable.getCurrentScopeName() + "_temp" + (tempLiteralCounter++) + '\n';
        textSegment += "\t\tl.s $f2, 0($a0)\n";

        textSegment += "\t\tc.eq.s $f1 $f2\n";
        textSegment += "\t\tbc1f " + "else_DtoI" + DtoItoBLabel + "\n";
        textSegment += "\t\tcvt.w.s $f0 $f0\n";
        textSegment += "\t\tmfc1 $t0 $f0\n";
        textSegment += "\t\tj exit_DtoI" + DtoItoBLabel + "\n";

        textSegment += "else_DtoI" + DtoItoBLabel + ":\n";

        textSegment += "\t\tround.w.s $f0 $f0\n";
        textSegment += "\t\tmfc1 $t0 $f0\n";

        textSegment += "exit_DtoI" + (DtoItoBLabel++) + ":\n";

        textSegment += "\t\taddi $sp, $sp, -4\n";
        textSegment += "\t\tl.s $f2, 0($sp)\n";
        textSegment += "\t\taddi $sp, $sp, -4\n";
        textSegment += "\t\tl.s $f1, 0($sp)\n";

    }


    private void visitItoD(AbstractSyntaxTreeNodeInterface node) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        if (!(node.getChild(0).getSymbolInfo().getType().getAlign() == 4)) {
            throw new Exception("Invalid type for " + node.getNodeType().toString() + " operation");
        }
        node.getSymbolInfo().setType(PrimitiveTypeEnum.DOUBLE);

        textSegment += "\t\tmtc1 $t0 $f0\n";
        textSegment += "\t\tcvt.s.w $f0 $f0\n";

    }


    private void visitOrNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        LogicalOp(node, "or");
    }


    private void LogicalOp(AbstractSyntaxTreeNodeInterface node, String op) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        if (!(node.getChild(0).getSymbolInfo().getType().getAlign() == 1)) {
            throw new Exception("Invalid type for " + node.getNodeType().toString() + " operation");
        }

        textSegment += "\t\t" + "move $t1" + ", " + "$t0" + "\n";
        textSegment += "\t\t" + "sw " + "$t1" + ", 0($sp)\n";
        textSegment += "\t\taddi $sp, $sp, 4\n";

        setParentSymbolInfo(node, node.getChild(1));

        textSegment += "\t\taddi $sp, $sp, -4\n";
        textSegment += "\t\t" + "lw " + "$t1" + ", 0($sp)\n";

        if (isTypesEqual(node.getChild(0).getSymbolInfo(), node.getChild(1).getSymbolInfo())) {
            textSegment += "\t\t" + op + " $t1, $t1, $t0\n";
        }

        textSegment += "\t\t" + "move $t0, $t1\n";
    }


    private void visitNotNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        if (!(node.getChild(0).getSymbolInfo().getType().getAlign() == 1)) {
            throw new Exception("Invalid type for " + node.getNodeType().toString() + " operation");
        }
//        textSegment += "\t\t" + "move $t0, $t0\n";
        textSegment += "\t\t" + "xori $t0, $t0, 1\n";
//        textSegment += "\t\t" + "move $t0, $t1\n";
    }


    private void visitAndNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        LogicalOp(node, "and");
    }


    private void LogicalOp2(AbstractSyntaxTreeNodeInterface node, String type) throws Exception {

        setParentSymbolInfo(node, node.getChild(0));
        SymbolInformation first = node.getSymbolInfo();
        int firstType = first.getType().getAlign();

        if (!(node.getChild(0).getSymbolInfo().getType().getAlign() == 4 || node.getChild(0).getSymbolInfo().getType().getAlign() == 8) && (!(type.equals("ne") || type.equals("eq")))) {
            throw new Exception("Invalid type for " + node.getNodeType().toString() + " operation");
        }


        int tempReg = firstType != 8 ? tempRegsNumber : tempfRegsNumber;
        List<String> reg = firstType != 8 ? regs : fregs;

        String op = firstType != 8 ? "s" + type + " " : "c." + type + ".s ";
        String op2 = firstType != 8 ? "move " : "mov.s ";
        String op3 = firstType != 8 ? "sw " : "swc1 ";
        String op4 = firstType != 8 ? "lw " : "lwc1 ";

        textSegment += "\t\t" + op2 + reg.get(tempReg + 1) + ", " + reg.get(tempReg) + "\n";
        textSegment += "\t\t" + op3 + reg.get(tempReg + 1) + ", 0($sp)\n";
        textSegment += "\t\taddi $sp, $sp, 4\n";


        setParentSymbolInfo(node, node.getChild(1));
        SymbolInformation second = node.getSymbolInfo();
        String secondType = second.getType().getSignature();

        textSegment += "\t\taddi $sp, $sp, -4\n";
        textSegment += "\t\t" + op4 + reg.get(tempReg + 1) + " 0($sp)\n";

        if (isTypesEqual(node.getChild(0).getSymbolInfo(), node.getChild(1).getSymbolInfo())) {
            if (node.getChild(0).getSymbolInfo().getType().getAlign() == 8) {
                switch (op) {
                    case "c.gt.s ":
                        textSegment += "\t\t" + "c.lt.s " + reg.get(tempReg) + ", " + reg.get(tempReg + 1) + "\n";
                        break;
                    case "c.ge.s ":
                        textSegment += "\t\t" + "c.le.s " + reg.get(tempReg) + ", " + reg.get(tempReg + 1) + "\n";
                        break;
                    case "c.ne.s ":
                        textSegment += "\t\t" + "c.eq.s " + reg.get(tempReg) + ", " + reg.get(tempReg + 1) + "\n";
                        break;
                    default:
                        textSegment += "\t\t" + op + reg.get(tempReg + 1) + ", " + reg.get(tempReg) + "\n";
                }

                textSegment += "\t\tbc1f L_CondFalse" + tempLabelCounter + "\n";
                if (!op.equals("c.ne.s ")) {
                    textSegment += "\t\tli $t0 1\n";
                } else {
                    textSegment += "\t\tli $t0 0\n";
                }
                textSegment += "\t\tj L_CondEnd" + tempLabelCounter + "\n";
                if (!op.equals("c.ne.s ")) {
                    textSegment += "\t\tL_CondFalse" + tempLabelCounter + " : li $t0 0\n";
                } else {
                    textSegment += "\t\tL_CondFalse" + tempLabelCounter + ": li $t0 1\n";
                }
                textSegment += "\t\tL_CondEnd" + tempLabelCounter++ + ":\n";
            } else {
                textSegment += "\t\t" + op + reg.get(tempReg + 1) + ", " + reg.get(tempReg + 1) + ", " + reg.get(tempReg) + "\n";
            }
            node.getSymbolInfo().setType(PrimitiveTypeEnum.BOOL);
        } else {
            throw new Exception("Type " + firstType + " & " + secondType + " are mismatched");
        }
        textSegment += "\t\t" + op2 + reg.get(tempReg) + ", " + reg.get(tempReg + 1) + "\n";
    }


    private void visitGreaterThanEqualNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        LogicalOp2(node, "ge");
//        node.getChild(0).accept(this);
//        switch (node.getChild(0).getSymbolInfo().getType().getAlign()) {
//            case 4: //int
//                textSegment += "\t\tmove $t1, $t0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tsge $t0, $t0, $t1\n";
//                break;
//            case 8: //double //TODO
//                textSegment += "\t\tmov.s $f1, $f0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tc.le.s $f1, $f0\n";
//                textSegment += "\t\tmovf $t0, $zero\n";
//                break;
//            default:
//                throw new Exception("invalid types for equal");
//        }
//        if (isTypesEqual(node.getChild(0).getSymbolInfo(), node.getChild(1).getSymbolInfo()))
//            node.setSymbolInfo(new SymbolInfo(node, PrimitiveType.BOOL));
//        else
//            throw new Exception("types does not match");
    }


    private void visitGreaterThanNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        LogicalOp2(node, "gt");
//        node.getChild(0).accept(this);
//        switch (node.getChild(0).getSymbolInfo().getType().getAlign()) {
//            case 4: //int
//                textSegment += "\t\tmove $t1, $t0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tsgt $t0, $t0, $t1\n";
//                break;
//            case 8: //double //TODO
//                textSegment += "\t\tmov.s $f1, $f0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tc.lt.s $f1, $f0\n";
//                textSegment += "\t\tmovf $t0, $zero\n";
//                break;
//            default:
//                throw new Exception("invalid types for equal");
//        }
//        if (isTypesEqual(node.getChild(0).getSymbolInfo(), node.getChild(1).getSymbolInfo()))
//            node.setSymbolInfo(new SymbolInfo(node, PrimitiveType.BOOL));
//        else
//            throw new Exception("types does not match");

    }


    private void visitLessThanEqualNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        LogicalOp2(node, "le");
//        node.getChild(0).accept(this);
//        switch (node.getChild(0).getSymbolInfo().getType().getAlign()) {
//            case 4: //int
//                textSegment += "\t\tmove $t1, $t0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tsle $t0, $t0, $t1\n";
//                break;
//            case 8: //double //TODO
//                textSegment += "\t\tmov.s $f1, $f0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tc.le.s $f0, $f1\n";
//                textSegment += "\t\tmovf $t0, $zero\n";
//                break;
//            default:
//                throw new Exception("invalid types for equal");
//        }
//        if (isTypesEqual(node.getChild(0).getSymbolInfo(), node.getChild(1).getSymbolInfo()))
//            node.setSymbolInfo(new SymbolInfo(node, PrimitiveType.BOOL));
//        else
//            throw new Exception("types does not match");
    }


    private void visitLessThanNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        LogicalOp2(node, "lt");

//        node.getChild(0).accept(this);
//        switch (node.getChild(0).getSymbolInfo().getType().getAlign()) {
//            case 4: //int
//                textSegment += "\t\tmove $t1, $t0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tslt $t0, $t0, $t1\n";
//                break;
//            case 8: //double //TODO
//                textSegment += "\t\tmov.s $f1, $f0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tc.lt.s $f0, $f1\n";
//                textSegment += "\t\tmovf $t0, $zero\n";
//                break;
//            default:
//                throw new Exception("invalid types for equal");
//        }
//        if (isTypesEqual(node.getChild(0).getSymbolInfo(), node.getChild(1).getSymbolInfo()))
//            node.setSymbolInfo(new SymbolInfo(node, PrimitiveType.BOOL));
//        else
//            throw new Exception("types does not match");
    }


    private void visitNotEqualNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        LogicalOp2(node, "ne");

//        node.getChild(0).accept(this);
//        switch (node.getChild(0).getSymbolInfo().getType().getAlign()) {
//            case 4: //int
//            case 6://string
//            case 10: //class
//                textSegment += "\t\tmove $t1, $t0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tsne $t0, $t0, $t1\n";
//                textSegment += "\t\tmovf $t0, $zero\n";
//                break;
//            case 8: //double //TODO
//                textSegment += "\t\tmov.s $f1, $f0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tc.eq.s $f0, $f1\n";
//                textSegment += "\t\tmovt $t0, $zero\n";
//                break;
//            default:
//                throw new Exception("invalid types for equal");
//        }
//        if (isTypesEqual(node.getChild(0).getSymbolInfo(), node.getChild(1).getSymbolInfo()))
//            node.setSymbolInfo(new SymbolInfo(node, PrimitiveType.BOOL));
//        else
//            throw new Exception("types does not match");

    }


    private void visitEqualNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        LogicalOp2(node, "eq");

//        node.getChild(0).accept(this);
//        switch (node.getChild(0).getSymbolInfo().getType().getAlign()) {
//            case 4: //int
//            case 6://string
//            case 10: //class
//                textSegment += "\t\tmove $t1, $t0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tseq $t0, $t0, $t1\n";
//                break;
//            case 8: //double //TODO
//                textSegment += "\t\tmov.s $f1, $f0\n";
//                node.getChild(1).accept(this);
//                textSegment += "\t\tc.eq.s $f0, $f1\n";
//                textSegment += "\t\tmovf $t0, $zero\n";
//                break;
//
//            default:
//                throw new Exception("invalid types for equal");
//        }
//        if (isTypesEqual(node.getChild(0).getSymbolInfo(), node.getChild(1).getSymbolInfo()))
//            node.setSymbolInfo(new SymbolInfo(node, PrimitiveType.BOOL));
//        else
//            throw new Exception("types does not match");
    }


    private void visitNegative(AbstractSyntaxTreeNodeInterface node) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        int type = 4;
        if (node.getChild(0).getChild(0).getNodeType() == NodeType.LVALUE) {
            IDNode idNode = (IDNode) node.getChild(0).getChild(0).getChild(0);
            String varName = idNode.getValue();
            SymbolInformation varType = (SymbolInformation) symbolTable.get(varName);
            type = varType.getType().getAlign();
        } else if (node.getChild(0).getChild(0).getNodeType() == NodeType.LITERAL) {
            Literal literalNode = (Literal) node.getChild(0).getChild(0);
            type = literalNode.getType().getAlign();
        }

        if (type == 4) {
            textSegment += "\t\tneg $t0, $t0\n";
        } else if (type == 8) {
            textSegment += "\t\tneg.s $f0, $f0\n";
        }
    }


    private void visitNewArrayNode(AbstractSyntaxTreeNodeInterface node) throws Exception {

        int literalNumber = ((IntegerNode) node.getChild(0).getChild(0)).getValue();

        setParentSymbolInfo(node, node.getChild(1));
        node.getSymbolInfo().setDimensionArray(node.getSymbolInfo().getDimensionArray() + 1);
        if (literalNumber <= 0)
            throw new Exception("array size must be greater than zero");
        String label = symbolTable.getCurrentScopeName() + "_NEW_ARRAY_" + arrayNumbers;
        arrayNumbers++;
        dataSegment += "\t" + label + ": .space " + (literalNumber + 1) * 4 + "\n";
        textSegment += "\t\tla $t0, " + label + "\n";
        textSegment += "\t\tli $t2, " + literalNumber + "\n";
        textSegment += "\t\tsw $t2, 0($t0)\n";
    }


    private void visitLiteralNode(AbstractSyntaxTreeNodeInterface node) {
        Literal literalNode = (Literal) node;
        node.setSymbolInfo(new SymbolInformation(node, literalNode.getType()));
        switch (literalNode.getType().getAlign()) {
            case 6: //string
                String str = ((StringNode) literalNode).getValue();
                System.out.println(str);
                str = str.replace("\\t", "\\\\t");
                str = str.replace("\\n", "\\\\n");
                String str_raw = str.substring(1, str.length() - 1);
                String label = "";
                if (!stringLiterals.keySet().contains(str_raw)) {
                    label = "StringLiteral_" + stringLiterals.keySet().size() + 1;
                    stringLiterals.put(str_raw, label);
                    dataSegment += "\t" + label + ": .asciiz " + str + "\n";
                } else
                    label = stringLiterals.get(str_raw);
                textSegment += "\t\tla $t0, " + label + "\n";
                node.setSymbolInfo(new SymbolInformation(node, PrimitiveTypeEnum.STRING));
                break;
            case 1: //bool
                String bool_type = node.toString().equals("true") ? "1" : "0";
                textSegment += "\t\tli " + regs.get(tempRegsNumber) + ", " + bool_type + "\n";
                break;
            case 4: //int
                textSegment += "\t\tli " + regs.get(tempRegsNumber) + ", " + node + "\n";
                break;
            case 8: //double
                dataSegment += "\t" + symbolTable.getCurrentScopeName() + "_temp" + tempLiteralCounter + ": .float " + node + "\n";
                textSegment += "\t\tla $a0, " + symbolTable.getCurrentScopeName() + "_temp" + (tempLiteralCounter++) + '\n';
                textSegment += "\t\tl.s $f0, 0($a0)\n";
//                textSegment += "\t\tli.s " + fregs.get(tempfRegsNumber) + ", " + node + "\n";
                break;
        }
    }


    private void visitReturnNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        Function method = Function.currentFunction;
        SymbolInformation returnType = method.getReturnType();
        node.getChild(0).accept(this);
        if (!isTypesEqual(returnType, node.getChild(0).getSymbolInfo()))
            throw new Exception("Return type of " + method.getName() + " is incorrect");
        textSegment += "\t\taddi $sp,$sp,-4\n";
        textSegment += "\t\tlw $ra,0($sp)\n";
        textSegment += "\t\tjr $ra\n";
    }


    private void visitCallNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        String varName;
        Function method = null;
        int argNumber = 0;
        for (AbstractSyntaxTreeNodeInterface child : node.getChildren()) {
            if (child.getNodeType().equals(NodeType.ID)) {
                IDNode idNode = (IDNode) child;
                varName = idNode.getValue();
                method = findFunction(varName);
                if (method == null)
                    throw new Exception(varName + " function doesn't exist");
            }
            if (child.getNodeType().equals(NodeType.ACTUALS)) {

                for (AbstractSyntaxTreeNodeInterface childChild : child.getChild(0).getChildren()) {
                    childChild.accept(this);
                    SymbolInformation si = childChild.getSymbolInfo();
                    if (!isTypesEqual(si, method.getArgumentsType().get(argNumber)))
                        throw new Exception("types doesn't match");

                    argNumber++;
                    switch (si.getType().getAlign()) {
                        case 1: //bool
                        case 4: // int
                        case 6: //String
                        case 10:
                            //TODO
                            textSegment += "\t\tsw $t0, 0($sp)\n";
                            textSegment += "\t\taddi $sp, $sp, " + 4 + "\n";
                            break;
                        case 8: // float
                            textSegment += "\t\tsw $t0, 0($sp)\n";
                            textSegment += "\t\taddi $sp, $sp, " + 4 + "\n";
                            break;
                        default:
                            break;
                    }
                }

            }
        }
        if (argNumber != method.getArgumentsType().size())
            throw new Exception("expected " + method.getArgumentsType().size() + " args but " + argNumber + " passed");
        textSegment += "\t\tjal " + method.getScope().getName() + "_" + method.getName() + "\n";
        textSegment += "\t\taddi $sp, $sp, " + (argNumber) * (-4) + "\n";

        node.setSymbolInfo(method.getReturnType());
    }


    private void visitReadIntegerNode(AbstractSyntaxTreeNodeInterface node) {
        SymbolInformation si = new SymbolInformation(node, PrimitiveTypeEnum.INT);
        node.setSymbolInfo(si);
        textSegment += "\t\tli $v0, 5\n\t\tsyscall\n";
        textSegment += "\t\tmove $t0, $v0\n\n";
    }


    private String labelGenerator() {
        return "L" + (++labelIndex);
    }


    private void visitIfStatement(AbstractSyntaxTreeNodeInterface node) throws Exception {

        String ifFalseLabel = labelGenerator();
        tempRegsNumber = 8; // assigning the expStmt into register $t0
        String ifType;
        if (node.getChildren().size() == 2) {
            ifType = "if";
        } else {
            ifType = node.getChildren().size() == 3 ? "if_else" : "invalid";
        }

        //it is if statement, so next child is expStmt which is the 0 child
        node.getChild(0).accept(this);
        if (node.getChild(0).getSymbolInfo().getType().getAlign() == 1) {
            textSegment += "\t\tbeq " + regs.get(tempRegsNumber) + ", 0" + ", " + ifFalseLabel + "\n";
        } else {
            throw new Exception("Invalid Expression in if_exp");
        }


        node.getChild(1).accept(this);

        textSegment += "\t\tj " + ifFalseLabel + "exit" + "\n";


        textSegment += ifFalseLabel + ":\n";

        if (ifType.equals("if_else")) {

            //it is if_else stmt, so the third child must be visited
            node.getChild(2).accept(this);
        } else if (!ifType.equals("if")) {
            throw new Exception("invalid if");
        }

        textSegment += ifFalseLabel + "exit:\n";
    }


    private void visitWhileNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        String label = labelGenerator();
        labels.push(label);
        //while Exp_stmt is the first child of the while statement so,
        textSegment += "\t\t" + label + ":" + "\n";

        node.getChild(0).accept(this);
        //should check that it's an expression
//        if (node.getChild(0).getSymbolInfo().getType().getAlign() == 1) {
        textSegment += "\t\tbeq $t0, $zero exit" + label + "\n";
//        }
        //after checking the exp_stmt in while, we should visit while body
        node.getChild(1).accept(this);
        textSegment += "\t\tj " + label + "\n";
        textSegment += "\t\texit" + label + ":\n";
        labels.pop();
    }


    private void visitForNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        String label = labelGenerator();
        label += "F";
        labels.push(label);

        int n_child = node.getChildren().size();
        if (n_child == 4) {
            node.getChild(0).accept(this);
            textSegment += "\t\t" + label + ":" + "\n";
            node.getChild(1).accept(this);
            textSegment += "\t\tbeq $t0, $zero exit" + label + "\n";
            node.getChild(2).accept(this);
            textSegment += "\t\t" + label + "update:\n";
            node.getChild(3).accept(this);
            textSegment += "\t\tj " + label + "\n";
            textSegment += "\t\texit" + label + ":\n";
        } else if (n_child == 3) {
            if (node.getChild(0).getChild(0).getNodeType().equals(NodeType.ASSIGN)) {
                node.getChild(0).accept(this);
                textSegment += "\t\t" + label + ":" + "\n";
                node.getChild(1).accept(this);
                textSegment += "\t\tbeq $t0, $zero exit" + label + "\n";
                node.getChild(2).accept(this);
                textSegment += "\t\t" + label + "update:\n";
//            node.getChild(3).accept(this);
                textSegment += "\t\tj " + label + "\n";
                textSegment += "\t\texit" + label + ":\n";
            } else {
//                node.getChild(0).accept(this);
                textSegment += "\t\t" + label + ":" + "\n";
                node.getChild(0).accept(this);
                textSegment += "\t\tbeq $t0, $zero exit" + label + "\n";
                node.getChild(1).accept(this);
                textSegment += "\t\t" + label + "update:\n";
                node.getChild(2).accept(this);
                textSegment += "\t\tj " + label + "\n";
                textSegment += "\t\texit" + label + ":\n";
            }
        } else if (n_child == 2) {
//            node.getChild(0).accept(this);
            textSegment += "\t\t" + label + ":" + "\n";
            node.getChild(0).accept(this);
            textSegment += "\t\tbeq $t0, $zero exit" + label + "\n";
            node.getChild(1).accept(this);
            textSegment += "\t\t" + label + "update:\n";
//            node.getChild(3).accept(this);
            textSegment += "\t\tj " + label + "\n";
            textSegment += "\t\texit" + label + ":\n";
        }


        labels.pop();
    }


    private void visitPrintNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        TypeInterface exprTypeInterface = PrimitiveTypeEnum.INPUTSTRING;
        for (AbstractSyntaxTreeNodeInterface child : node.getChild(0).getChildren()) {
            child.accept(this);
            exprTypeInterface = child.getSymbolInfo().getType();
            switch (exprTypeInterface.getAlign()) {
                case 1: //bool
                    String generatedLabel = labelGenerator();
                    textSegment += "\t\tli $v0, 1\n";
                    textSegment += "\t\tbeq $t0, $zero, printFalse" + generatedLabel + "\n";
                    textSegment +=
                            "\t\tla $t0, true\n" +
                                    "\t\tli $v0, 4\n" +
                                    "\t\tadd $a0, $t0, $zero\n" +
                                    "\t\tsyscall\n" +
                                    "\t\tb endPrintFalse" + generatedLabel + "\n" +
                                    "\tprintFalse" + generatedLabel + ":\n" +
                                    "\t\tla $t0, false\n" +
                                    "\t\tli $v0, 4\n" +
                                    "\t\tadd $a0, $t0, $zero\n" +
                                    "\t\tsyscall\n" +
                                    "\tendPrintFalse" + generatedLabel + ":\n";
                    break;
                case 4: //int
                    textSegment += "\t\tli $v0, 1\n";
                    textSegment += "\t\tadd $a0, $t0, $zero\n";
                    textSegment += "\t\tsyscall\n";
                    break;
                case 6://string
                case 12:
                    textSegment += "\t\tli $v0, 4\n";
                    textSegment += "\t\tadd $a0, $t0, $zero\n";
                    textSegment += "\t\tsyscall\n";
                    break;
                case 8://float
                    textSegment += "\t\tli $v0, 2\n";
                    textSegment += "\t\tmov.d\t$f12, $f0\n";
                    textSegment += "\t\tsyscall\n";
                    break;
                default:
                    break;
            }
        }
        if (exprTypeInterface.getAlign() != 12) {
            textSegment += "\t\t#print new Line\n";
            textSegment += "\t\taddi $a0, $0, 0xA\n\t\taddi $v0, $0, 0xB\n\t\tsyscall \n";
        }
    }


    private void visitClassDeclarationNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        //TODO
        //
        IDNode idNode = (IDNode) node.getChild(0);
        String className = idNode.getValue();
        ClassDecaf.currentClass = findClass(className);
        //type
        symbolTable.enterScope(className);
        visitAllChildren(node);
        symbolTable.leaveCurrentScope();
    }


    private void visitModNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        ArithmeticOp2(node, "mod");
    }


    private void visitDivisionNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        ArithmeticOp2(node, "div");
    }


    private void visitMultiplicationNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        ArithmeticOp2(node, "mul");
    }


    private void ArithmeticOp2(AbstractSyntaxTreeNodeInterface node, String type) throws Exception {
        setParentSymbolInfo(node, node.getChild(0));
        SymbolInformation first = node.getSymbolInfo();
        int firstType = first.getType().getAlign();
        String main_type = type;
        int tempReg = firstType == 4 ? tempRegsNumber : tempfRegsNumber;
        List<String> reg = firstType == 4 ? regs : fregs;

        if (firstType != 4 && type.equals("mod")) {
            throw new Exception("bad parameters for mod operation");
        } else if (type.equals("mod")) {
            main_type = "div";
        }

        if (!(firstType == 4 || firstType == 8)) {
            throw new Exception("bad parameters for type " + type);
        }


        String op = firstType == 4 ? main_type + " " : main_type + ".s ";
        String op2 = firstType == 4 ? "move " : "mov.s ";
        String op3 = firstType == 4 ? "sw " : "s.s ";
        String op4 = firstType == 4 ? "lw " : "l.s ";

        textSegment += "\t\t" + op2 + reg.get(tempReg + 1) + ", " + reg.get(tempReg) + "\n";
        textSegment += "\t\t" + op3 + reg.get(tempReg + 1) + ", 0($sp)\n";
        textSegment += "\t\taddi $sp, $sp, 4\n";


        setParentSymbolInfo(node, node.getChild(1));
        SymbolInformation second = node.getSymbolInfo();
        String secondType = second.getType().getSignature();

        textSegment += "\t\taddi $sp, $sp, -4\n";
        textSegment += "\t\t" + op4 + reg.get(tempReg + 1) + " 0($sp)\n";


        if (isTypesEqual(first, second)) {
            textSegment += "\t\t" + op + reg.get(tempReg + 1) + ", " + reg.get(tempReg + 1) + ", " + reg.get(tempReg) + "\n";
            if (type.equals("mod")) {
                textSegment += "\t\tmfhi $t1\n";
            }
        } else {
            throw new Exception("Type " + firstType + " & " + secondType + " are mismatched");
        }

        textSegment += "\t\t" + op2 + reg.get(tempReg) + ", " + reg.get(tempReg + 1) + "\n";
    }


    private void visitSubtractionNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        ArithmeticOp1(node, "sub");
    }


    private void visitAdditionNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        ArithmeticOp1(node, "add");
    }


    private void ArithmeticOp1(AbstractSyntaxTreeNodeInterface node, String type) throws Exception {


        setParentSymbolInfo(node, node.getChild(0));
        SymbolInformation first = node.getSymbolInfo();
        int firstType = first.getType().getAlign();
//        System.out.println(firstType);

        int tempReg = firstType == 4 ? tempRegsNumber : tempfRegsNumber;
        List<String> reg = firstType == 4 ? regs : fregs;

        if (!(firstType == 4 || firstType == 8 || firstType == 6)) {
            throw new Exception("bad parameters for this " + type);
        }

        if (firstType == 6) {
//            String finalString ;
//            System.out.println(node.getChild(0).toString());
//            node.getChild(0).setSymbolInfo(new SymbolInfo(node.getChild(0),PrimitiveType.STRING));
//            Literal lt = ((Literal) expr.getSymbolInfo().getNode() );
//            String st = ((StringLiteralNode) lt).getValue();
//            Literal lt = (Literal)node.getChild(0).getChild(0);
//            String st = ((StringLiteralNode) lt).getValue();
//            System.out.println(st);
        /*concat:
            lb $t0, 0($a0)          # $t0 = string1[i]
            beq $t0, $0, string2    # if end of string1, go to string2
            sb $t0, 0($a2)          # stringconcat[i] = string1[i]
            addi $a0, $a0, 1        # increment index into string1
            addi $a2, $a2, 1        # increment index into stringconcat
            j concat                # loop back

          string2:
            lb $t0, 0($a1)          # $t0 = string2[j]
            beq $t0, $0, done       # if end of string2, return
            sb $t0, 0($a2)          # stringconcat[j] = string2[j]
            addi $a1, $a1, 1        # increment index into string2
            addi $a2, $a2, 1        # increment index into stringconcat
            j string2               # **Missing line!**

          done:
            sb $0, 0($a2)           # append null to end of string
            jr $ra*/

            setParentSymbolInfo(node, node.getChild(1));
            SymbolInformation second = node.getSymbolInfo();
            String secondType = second.getType().getSignature();

            return;
            //TODO
        }
        String op = firstType == 4 ? type + " " : type + ".s ";
        String op2 = firstType == 4 ? "move " : "mov.s ";
        String op3 = firstType == 4 ? "sw " : "s.s ";
        String op4 = firstType == 4 ? "lw " : "l.s ";

        textSegment += "\t\t" + op2 + reg.get(tempReg + 1) + ", " + reg.get(tempReg) + "\n";
        textSegment += "\t\t" + op3 + reg.get(tempReg + 1) + ", 0($sp)\n";
        textSegment += "\t\taddi $sp, $sp, 4\n";


        setParentSymbolInfo(node, node.getChild(1));
        SymbolInformation second = node.getSymbolInfo();
        String secondType = second.getType().getSignature();

        textSegment += "\t\taddi $sp, $sp, -4\n";
        textSegment += "\t\t" + op4 + reg.get(tempReg + 1) + " 0($sp)\n";

        if (isTypesEqual(first, second)) {
            textSegment += "\t\t" + op + reg.get(tempReg + 1) + ", " + reg.get(tempReg + 1) + ", " + reg.get(tempReg) + "\n";
        } else {
            throw new Exception("Type " + firstType + " & " + secondType + " are mismatched");
        }
        textSegment += "\t\t" + op2 + reg.get(tempReg) + ", " + reg.get(tempReg + 1) + "\n";

    }


    private void visitLValueNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        node.getChild(0).accept(this);
        if (node.getChildren().size() == 1) { //id
            IDNode idNode = (IDNode) node.getChild(0);
            String varName = idNode.getValue();
            SymbolInformation varType = (SymbolInformation) symbolTable.get(varName);
            SymbolInformation si = new SymbolInformation(node, varType.getType());
            si.setDimensionArray(varType.getDimensionArray());
            node.setSymbolInfo(si);
            switch (varType.getType().getAlign()) {
                case 1: //bool
                case 4: // int
                case 6: //String
                    textSegment += "\t\tla $a0, " + findNameOfId(varName) + '\n';
                    textSegment += "\t\tlw $t0, 0($a0)\n";
                    break;
                case 8: // float
                    textSegment += "\t\tla $a0, " + findNameOfId(varName) + '\n';
                    textSegment += "\t\tl.s $f0, 0($a0)\n";
                    break;
                //todo
                default:
                    break;
            }
        } else {
            if (node.getChild(1).getNodeType().equals(NodeType.ID)) {
                //TODO
            } else {
                node.getChild(0).accept(this);
                textSegment += "\t\tmove $a3, $t0\n";
                textSegment += "\t\tmove $s4, $a0\n";
                SymbolInformation varType = node.getChild(0).getSymbolInfo();
                node.getChild(1).accept(this);
                SymbolInformation varType2 = node.getChild(1).getSymbolInfo();
                if (varType2.getType().getAlign() == 4) {//int
                    if (varType.getDimensionArray() > 0) {
                        textSegment += "\t\tli $t4, 4\n";
                        textSegment += "\t\taddi $t0, $t0, 1\n";
                        textSegment += "\t\tlw $t2, 0($a3)\n";
                        textSegment += "\t\tblt $t2, $t0, runtime_error\n";
                        textSegment += "\t\tmul $t0, $t0, $t4\n";
                        textSegment += "\t\tadd $a0, $a3, $t0\n";
                        textSegment += "\t\tlw $t0, 0($a0)\n";
                    } else
                        throw new Exception("error in array assign - type is not array");
                } else
                    throw new Exception("error in array assign - index array");

                SymbolInformation si = new SymbolInformation(node, varType.getType());
                si.setDimensionArray(varType.getDimensionArray() - 1);
                node.setSymbolInfo(si);
            }
        }

    }


    private void visitAssignNode(AbstractSyntaxTreeNodeInterface node) throws Exception { // age kharab shod az commit Better Addition drst kn
        setParentSymbolInfo(node, node.getChild(0));
        SymbolInformation varType = node.getChild(0).getSymbolInfo();
        textSegment += "\t\tla $a3, 0($a0) \n";
        node.getChild(1).accept(this);
        SymbolInformation exprType = node.getChild(1).getSymbolInfo();
        if (exprType == null)
            throw new Exception("Assign Error");
        //TODO
        if (isTypesEqual(varType, exprType)) {
            switch (varType.getType().getAlign()) {
                case 6: //string
                case 1: //bool
                case 4: // int
                    textSegment += "\t\tsw $t0, 0($a3)\n";
                    break;
                case 8: // float
                    textSegment += "\t\ts.s $f0, 0($a3)\n";
                    break;
                case 10:
                    //todo
                    break;
                default:
                    break;
            }
        } else {
            throw new Exception("Type " + varType + " & " + exprType + " Doesnt Match");
        }
    }


    private void visitExpressionNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        tempRegsNumber = 8;

//        textSegment += "\t\tmove $s0, $t1\n";
        setParentSymbolInfo(node, node.getChild(0));
//        textSegment += "\t\tmove $t1, $s0\n";


//        visitAllChildren(node);
    }


    private void visitStatementNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        visitAllChildren(node);
//        setParentSymbolInfo(node, node.getChild(0));

    }


    private void visitStatementsNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        visitAllChildren(node);
    }


    private void visitArgumentsNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        int argumentsLen = node.getChildren().size() * (-4);
        Function function = Function.currentFunction;
        if (argumentsLen < 0)
            textSegment += "\t\taddi $sp,$sp," + argumentsLen + "\n";
        for (int i = argumentsLen / (-4); i >= 1; i--) {
            AbstractSyntaxTreeNodeInterface ArgumentNode = node.getChild(i - 1);
            ArgumentNode.getChild(0).accept(this);
            IDNode idNode = (IDNode) ArgumentNode.getChild(0).getChild(1);
            String idName = idNode.getValue();
            SymbolInformation si = function.getArgumentsType().get(i - 1);
            switch (si.getType().getAlign()) {
                case 1: //bool
                case 4: // int
                case 6: //String
                case 10:
                    //TODO
                    textSegment += "\t\tla $a1, " + findNameOfId(idName) + '\n';
                    textSegment += "\t\tlw $t1, 0($sp)\n";
                    textSegment += "\t\tsw $t1, 0($a1)\n";
                    textSegment += "\t\taddi $sp, $sp, " + 4 + "\n";
                    break;
                case 8: // float
                    textSegment += "\t\tla $a1, " + findNameOfId(idName) + '\n';
                    textSegment += "\t\tl.s $f1, 0($sp)\n";
                    textSegment += "\t\ts.s $f1, 0($a1)\n";
                    textSegment += "\t\taddi $sp, $sp, " + 4 + "\n";
                    break;
                default:
                    break;
            }
        }

    }


    private void visitStartNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        dataSegment += "\terror: .asciiz \"runtime ERROR\"\n";
        textSegment += ".text\n" + "\t.globl main\n\n";
        textSegment += "\tmain:\n";
        textSegment += "\t\tjal global_main\n";

        textSegment += "\t\t#END OF PROGRAM\n";
        textSegment += "\t\tli $v0,10\n\t\tsyscall\n";

        textSegment += "\truntime_error:\n";
        textSegment += "\t\tli $v0, 4\n";
        textSegment += "\t\tla $a0, error\n";
        textSegment += "\t\tsyscall\n";

        textSegment += "\t\t#END OF PROGRAM\n";
        textSegment += "\t\tli $v0,10\n\t\tsyscall\n";

        symbolTable.enterScope("global");
        visitAllChildren(node);
        stream.print(dataSegment + '\n' + textSegment);
    }


    private void visitBlockNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        if (node.getParent().getNodeType() != NodeType.METHOD) {
            symbolTable.enterScope("block_" + blockIndex++);
            visitAllChildren(node);
            symbolTable.leaveCurrentScope();
        } else {
            visitAllChildren(node);
        }
    }


    private void visitVariableDeclaration(AbstractSyntaxTreeNodeInterface node) throws Exception {
        if (ClassDecaf.currentClass == null || !symbolTable.getCurrentScopeName().equals(ClassDecaf.currentClass.getName())) {
            IDNode idNode = (IDNode) node.getChild(1);
            String varName = idNode.getValue();
            String label = symbolTable.getCurrentScopeName() + "_" + varName + " :";
            setParentSymbolInfo(node, node.getChild(0));
            int dimensionArray = node.getSymbolInfo().getDimensionArray();
            if (!node.getChild(0).getNodeType().equals(NodeType.ID)) {
                TypeInterface typeInterfacePrimitive = node.getSymbolInfo().getType();
                if (dimensionArray == 0 && !typeInterfacePrimitive.getSignature().equals(".ascii"))
                    dataSegment += "\t" + label + " " + typeInterfacePrimitive.getSignature() + " " + typeInterfacePrimitive.getPrimitive().getInitialValue() + "\n";
                else
                    dataSegment += "\t" + label + " .word 0" + "\n";
            } else {
                IDNode typeNode = (IDNode) node.getChild(0);
                String typeName = typeNode.getValue();
                ClassDecaf classDecaf = findClass(typeName);
                if (classDecaf == null)
                    throw new Exception(typeName + " class not Declared");
                dataSegment += "\t" + label + "\t" + ".space" + "\t" + classDecaf.getObjectSize() + "\n";
            }
            symbolTable.put(varName, node.getSymbolInfo());
        }

    }


    private void visitUnaryOperation() {
    }


    private void visitBinaryOperation(AbstractSyntaxTreeNodeInterface node) {

        ExprNode parent = (ExprNode) node.getParent();


//        String result = "";
//
//        switch (resultType){
//            case BOOL:
//                break;
//            case INT:
//                break;
//            case DOUBLE:
//                break;
//            case STRING:
//                break;
//
//        }


    }


    private void visitMethodDeclarationNode(AbstractSyntaxTreeNodeInterface node) throws Exception {
        node.getChild(0).accept(this);
        SymbolInformation returnType = node.getChild(0).getSymbolInfo();

        //identifier
        IDNode idNode = (IDNode) node.getChild(1);
        String methodName = idNode.getValue();
        Function method_temp = new Function(methodName, returnType, symbolTable.getCurrentScope());
        for (Function function : functions) {
            if (function.equals(method_temp)) {
                Function.currentFunction = function;
                break;
            }
        }
        String label = symbolTable.getCurrentScopeName() + "_" + methodName;
        textSegment += "\t" + label + ":\n";
        symbolTable.enterScope(label);
        textSegment += "\t\tsw $ra,0($sp)\n";
        node.getChild(2).accept(this);
        textSegment += "\t\taddi $sp,$sp,4\n";
        node.getChild(3).accept(this);
        textSegment += "\t\taddi $sp,$sp,-4\n";
        textSegment += "\t\tlw $ra,0($sp)\n";
        textSegment += "\t\tjr $ra\n";

        symbolTable.leaveCurrentScope();
    }


    private void visitAllChildren(AbstractSyntaxTreeNodeInterface node) throws Exception {
        for (AbstractSyntaxTreeNodeInterface child : node.getChildren()) {
            child.accept(this);
        }
    }


    private String getBlock() {
        return "" + blockIndex++;
    }


    private boolean isTypesEqual(SymbolInformation a, SymbolInformation b) {
        if (a.getType().getAlign() == b.getType().getAlign()) {
            if (a.getType().getSignature().equals(b.getType().getSignature())) {
                if (a.getDimensionArray() == b.getDimensionArray())
                    return a.getType().getPrimitive().equals(b.getType().getPrimitive());
            }
        }
        return false;
    }


    private String findNameOfId(String id) {
        return symbolTable.getScopeNameOfIdentifier(id) + "_" + id;
    }


    private Function findFunction(String varName) {
        Function method = null;
        for (Function function : functions) {
            if (function.getName().equals(varName)) {
                for (Scope scope : symbolTable.getScopes()) {
                    if (scope.equals(function.getScope())) {
                        method = function;
                        break;
                    }
                }
                if (method != null)
                    break;
            }
        }
        return method;
    }


    private void setParentSymbolInfo(AbstractSyntaxTreeNodeInterface node, AbstractSyntaxTreeNodeInterface child) throws Exception {
        child.accept(this);
//        System.err.print("Node is " + node + " Child is " + child);
        TypeInterface typeInterface = child.getSymbolInfo().getType();
        SymbolInformation si = new SymbolInformation(node, typeInterface);
//        System.err.println(" child type:" + type);
        si.setDimensionArray(child.getSymbolInfo().getDimensionArray());
        node.setSymbolInfo(si);
    }


    private ClassDecaf findClass(String name) {
        for (ClassDecaf aClass : classes) {
            if (aClass.getName().equals(name))
                return aClass;
        }
        return null;
    }

}
