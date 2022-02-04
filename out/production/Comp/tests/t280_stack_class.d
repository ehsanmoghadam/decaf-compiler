class Stack {
  int sp;
  int[] elems;


    public void Init() {
      elems = NewArray(100, int);
      sp = 0;
      Push(3);
    }
    public void Push(int i) {
      elems[sp] = i;
      sp = sp + 1;
    }
    public int Pop() {
      int val;
      val = elems[sp - 1];
      sp = sp - 1;
      return val;
    }
    public int NumElems() {
      return sp;
   }
}

void main() {
  Stack s;
  s = new Stack;
  s.Init();
  s.Push(3);
  s.Push(7);
  s.Push(4);
  Print (s.NumElems(), " ", s.Pop(), " ", s.Pop(), " ", s.Pop(), " ", s.NumElems());
}