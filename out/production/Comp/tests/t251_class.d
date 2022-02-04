class A{
    private string a;
    public void set_a(string a) {
        this.a = a;
    }
    public string get_a(){
        return a;
    }
    public bool comp(A oth){
        if (a == oth.get_a())
            return true;
        return false;
    }
}

int main() {
    A a1;
    A a2;
    a1.set_a("Obj1");
    a2.set_a("Obj2");
    Print(a1.comp(a2));
}