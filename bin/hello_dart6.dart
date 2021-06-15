
//static
void main(List<String> arguments) {

  Employee seulgi = Employee('슬기');
  seulgi.printSelf();
  Employee.building = '자이하우스';
  seulgi.printSelf();

}

class Employee {

  static String building = "빌딩";
  String name;

  Employee (String name) : this.name = name;

  void printSelf(){
    print('나는 $name 입니다, $building 에 살고 있습니다.');
  }

}