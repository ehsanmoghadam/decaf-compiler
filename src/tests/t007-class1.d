
class Person {
    private string name;
    private int age;

    public void setName(string new_name) {
        name = new_name;
    }

    public void setAge(int new_age) {
        age = new_age;
    }

    public void print() {
        Print("Name: ", name, " Age: ", age);
    }

}

int main() {
    Person p;

    string name;
    int age;

    name = ReadLine();
    age = ReadInteger();

    p = new Person;
    p.setName(name);
    p.setAge(age);

    p.print();
}
