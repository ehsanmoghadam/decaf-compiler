
class Item {
    private string content;

    public void init(string s) {
        content = s;
    }

    public void print() {
        Print(content);
    }
}

Item test() {
    Item i;
    i = new Item;
    i.init("Special Item!");
    return i;
}

int main() {
    Item i;
    i = test();
    i.print();
}
