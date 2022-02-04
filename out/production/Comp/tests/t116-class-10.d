
class A {
    public Z a(Z z) {
        Print("entering method a of A");
        return z.c();
    }

    public Z b(Z z) {
        Print("entering method b of A");
        return z.c();
    }
}

class Z {

    int counter;

    public void init() {
        counter = 0;
    }

    public Z c() {
        Print("inside method c of Z");
        counter = counter + 1;
        return this;
    }

    public void print() {
        Print("Value of counter is: ", counter);
    }
}

int main() {
    A a;
    Z z;
    a = new A;
    z = new Z;
    z.init();

    a.b(a.a(a.b(z)));
    z.print();
}
