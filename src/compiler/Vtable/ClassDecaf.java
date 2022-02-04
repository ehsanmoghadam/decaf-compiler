package compiler.Vtable;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ClassDecaf {
    ClassDecaf parentClass = null;
    List<Field> fields = new ArrayList<>();
    public static ClassDecaf currentClass;
    List<Function> methods = new ArrayList<>();
    int objectSize = 0;
    String parentClassName = "";
    String name;

    public ClassDecaf(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ClassDecaf getParentClass() {
        return parentClass;
    }

    public void setParentClass(ClassDecaf parentClass) {
        this.parentClass = parentClass;
    }

    public List<Field> getFields() {
        return fields;
    }

    public void setFields(List<Field> fields) {
        this.fields = fields;
    }

    public int getObjectSize() {
        return objectSize;
    }

    public void setObjectSize(int objectSize) {
        this.objectSize = objectSize;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ClassDecaf that = (ClassDecaf) o;

        return Objects.equals(name, that.name);
    }

    @Override
    public int hashCode() {
        return name != null ? name.hashCode() : 0;
    }

    public List<Function> getMethods() {
        return methods;
    }

    public void setMethods(List<Function> methods) {
        this.methods = methods;
    }

    public String getParentClassName() {
        return parentClassName;
    }

    public void setParentClassName(String parentClassName) {
        this.parentClassName = parentClassName;
    }

    @Override
    public String toString() {
        return "ClassDecaf{" +
                "name='" + name + '\'' +
                ", methods=" + methods +
                ", fields=" + fields +
                ", parentClassName='" + parentClassName + '\'' +
                '}';
    }
}
