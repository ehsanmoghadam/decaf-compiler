
class Test {
    int a;
    public void init() {
        a = 1;
    }
    public void test() {
        int a;
        a = 4;
        Print(a);
        Print(this.a);
    }
}

int main() {
    Test t;
    t = new Test;
    t.init();
    t.test();
}