
class A {

    int counter;

    public void init() {
        counter = 0;
    }

    public A a(A a1) {
        Print("entering method a of A");
        a1.counter = a1.counter + 1;
        return this;
    }

    public A b(A a1) {
        Print("entering method b of A");
        a1.counter = a1.counter * 2;
        return this;
    }

    public void print() {
        Print("Value of counter is: ", counter);
    }
}


int main() {
    A a;
    a = new A;
    a.init();

    a.b(a.a(a.b(a.a(a))));
    a.print();
}
