
//인터페이스 interface
void main(List<String> arguments) {

  BoyGroup boyGroup = BoyGroup('뷔', 'BTS');
  boyGroup.sayName();

  GirlGroup girlGroup = GirlGroup('슬기');
  girlGroup.sayName();

  BoyGroup('RM', 'BTS')
  ..sayName()
  ..sayGroup();

}

class IdolInterface {
  void sayName(){}
}

class BoyGroup implements IdolInterface{

  String name;
  String group;

  BoyGroup (String name, String group) :
      this.name = name, this.group = group;

  @override
  void sayName() {
    print('저의 이름은 $name 입니다.');
  }

  void sayGroup(){
    print('저는 $group 소속입니다.');
  }

}

class GirlGroup implements IdolInterface{

  String name;

  GirlGroup (String name) :
        this.name = name;

  @override
  void sayName() {
    print('저의 이름은 $name 입니다.');
  }

}