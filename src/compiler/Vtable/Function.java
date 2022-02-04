package compiler.Vtable;

import compiler.codegenerator.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Function {
    String Name;
    SymbolInformation returnType;
    Scope scope;
    List<SymbolInformation> argumentsType = new ArrayList<>();
    AccessMode accessMode = AccessMode.Public;
    public static Function currentFunction;

    public Function(String name) {
        Name = name;
    }

    public Function(String name, SymbolInformation returnType, Scope scope) {
        Name = name;
        this.returnType = returnType;
        this.scope = scope;
    }

    public Function(String name, SymbolInformation returnType, Scope scope, List<SymbolInformation> argumentsType) {
        Name = name;
        this.returnType = returnType;
        this.scope = scope;
        this.argumentsType = argumentsType;
    }


    public Function(String name, SymbolInformation returnType, List<SymbolInformation> argumentsType) {
        Name = name;
        this.returnType = returnType;
        this.argumentsType = argumentsType;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public SymbolInformation getReturnType() {
        return returnType;
    }

    public void setReturnType(SymbolInformation returnType) {
        this.returnType = returnType;
    }

    public Scope getScope() {
        return scope;
    }

    public void setScope(Scope scope) {
        this.scope = scope;
    }

    public List<SymbolInformation> getArgumentsType() {
        return argumentsType;
    }

    @Override
    public String toString() {
        return "Function{" +
                "Name='" + Name + '\'' +
                ", returnType=" + returnType +
                ", scope=" + scope +
                '}';
    }

    public void setArgumentsType(List<SymbolInformation> argumentsType) {
        this.argumentsType = argumentsType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Function function = (Function) o;
        return Objects.equals(Name, function.Name) &&
                Objects.equals(scope, function.scope);
    }

    @Override
    public int hashCode() {
        return Objects.hash(Name, scope);
    }

    public AccessMode getAccessMode() {
        return accessMode;
    }

    public void setAccessMode(AccessMode accessMode) {
        this.accessMode = accessMode;
    }

    public static Function getCurrentFunction() {
        return currentFunction;
    }

    public static void setCurrentFunction(Function currentFunction) {
        Function.currentFunction = currentFunction;
    }
}

