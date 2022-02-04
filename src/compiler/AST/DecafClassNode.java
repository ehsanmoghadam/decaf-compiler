package compiler.AST;

import java.util.HashMap;

public class DecafClassNode extends DefaultAbstractSyntaxTreeNode {
    private HashMap<String, String> methodMap = new HashMap<>();

    public DecafClassNode() {
        super(NodeType.ClASS_INVOCATION);
    }

    public void putMethodSig(String name, String sig) {
        methodMap.put(name, sig);
    }

    public String getMethodSig(String name) {
        return methodMap.get(name);
    }
}