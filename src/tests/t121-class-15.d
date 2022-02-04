
class A {

    int counter;

    public void init() {
        counter = 0;
    }

    public A a() {
        Print("entering method a of A");
        counter = counter + 1;
        return this;
    }

    public A b() {
        Print("entering method b of A");
        counter = counter * 2;
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

    a.a().b().a().b().print();
}
