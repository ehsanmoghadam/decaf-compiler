class A {
	int a;
	int b;
	int c;

	public void set(int a, int b) {
	    this.a = a;
	    this.b = b;
	    c = a + b;
	}

	public B f(int x) {
	    B b;
	    b = new B;
	    b.set(x, a + this.b);
	    return b;
	}

}

class B {
    int a;
    int b;
    public void set(int a, int b) {
        this.a = a;
        this.b = b;
    }
    public void h() {
           Print(a, " and ", this.b);
    }
    public A g() {
        A a;
        a = new A;
        a.set(this.a, this.b);
        return a;
    }
}

void H(B b) {
    b.g().f(1000).h();
}

int main() {
    B b;
    b = new B;
    b.set(10, 5);
    H(b);
}