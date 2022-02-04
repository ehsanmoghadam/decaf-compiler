
class A {

    int counter;

    public void init() {
        counter = 0;
    }

    public A a() {
        Print("entering method a of A");
        counter = counter + 1;
        print();
    }

    public void print() {
        Print("Value of counter is: ", counter);
    }
}

class Z {
    public void c(A a) {
        Print("entering method c of Z");
        a.a();
    }
}


int main() {
    A a;
    Z z;
    a = new A;
    z = new Z;
    a.init();

    z.c(a);
}
