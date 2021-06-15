
//오버라이드
void main(List<String> arguments) {


  Parent parent = Parent(10);
  parent.calc();

  Child child = Child(10);
  child.calc();

}

class Parent {

  final number;

  Parent(number) :
        this.number = number;


  void calc(){
    print('calc : ${number * number}');
  }
}

class Child extends Parent {

  Child(number) :
        super(number);

  @override
  void calc() {
    print('calc : ${number + number}');
  }
}