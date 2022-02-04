package compiler.Vtable;

import compiler.codegenerator.SymbolInformation;

import java.util.Objects;

public class Field {
    String name;
    SymbolInformation symbolInformation;
    AccessMode accessMode = AccessMode.Public;
    ClassDecaf classDecaf = null;
    public static AccessMode currentAccessMode;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public SymbolInformation getSymbolInfo() {
        return symbolInformation;
    }

    public void setSymbolInfo(SymbolInformation symbolInformation) {
        this.symbolInformation = symbolInformation;
    }

    public AccessMode getAccessMode() {
        return accessMode;
    }

    public void setAccessMode(AccessMode accessMode) {
        this.accessMode = accessMode;
    }

    public ClassDecaf getClassDecaf() {
        return classDecaf;
    }

    public void setClassDecaf(ClassDecaf classDecaf) {
        this.classDecaf = classDecaf;
    }

    public static AccessMode getCurrentAccessMode() {
        return currentAccessMode;
    }

    public static void setCurrentAccessMode(AccessMode currentAccessMode) {
        Field.currentAccessMode = currentAccessMode;
    }

    public Field(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Field{" +
                "name='" + name + '\'' +
                ", symbolInfo=" + symbolInformation +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Field field = (Field) o;

        if (!Objects.equals(name, field.name)) return false;
        return Objects.equals(classDecaf, field.classDecaf);
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (classDecaf != null ? classDecaf.hashCode() : 0);
        return result;
    }
}
