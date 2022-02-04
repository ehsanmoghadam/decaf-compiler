
class Test {
    int field;

    public void init() {
        field = 365214;
    }

    public int test() {
        int field;
        field = 471569;
        Print(field);
        Print(this.field);
    }
}

int main() {
    Test t;
    t = new Test;
    t.init();

    t.test();
}
