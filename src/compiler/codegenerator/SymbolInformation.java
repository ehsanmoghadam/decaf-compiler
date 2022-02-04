package compiler.codegenerator;

import compiler.AST.*;

import java.util.Objects;

public class SymbolInformation implements Symbol {
    AbstractSyntaxTreeNodeInterface node;
    TypeInterface typeInterface;
    int dimensionArray = 0;

    public int getDimensionArray() {
        return dimensionArray;
    }

    public void setDimensionArray(int dimensionArray) {
        this.dimensionArray = dimensionArray;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SymbolInformation that = (SymbolInformation) o;
        if (!Objects.equals(node, that.node)) return false;
        return Objects.equals(typeInterface, that.typeInterface);
    }

    @Override
    public int hashCode() {
        int result = node != null ? node.hashCode() : 0;
        result = 31 * result + (typeInterface != null ? typeInterface.hashCode() : 0);
        return result;
    }

    public SymbolInformation(AbstractSyntaxTreeNodeInterface node, TypeInterface typeInterface) {
        this.node = node;
        this.typeInterface = typeInterface;
    }

    public SymbolInformation(AbstractSyntaxTreeNodeInterface node, PrimitiveTypeEnum typeInterface) {
        this.node = node;
        this.typeInterface = typeInterface;
    }

    public AbstractSyntaxTreeNodeInterface getNode() {
        return node;
    }

    public TypeInterface getType() {
        return typeInterface;
    }

    public void setType(TypeInterface typeInterface) {
        this.typeInterface = typeInterface;
    }


    public String toString() {
        return "SymbolInfo: " + typeInterface;
    }
}