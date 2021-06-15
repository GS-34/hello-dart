
//클래스
void main(List<String> arguments) {

  Idol seulgi = Idol('슬기','레드벨벳',1);
  seulgi.sayName();

  Idol v = Idol('뷔','BTS', 2);
  v.sayName();


  Idol seulgi2 = Idol.fromMap({
    'name' : '슬기',
    'group' : '레드벨벳',
    'id' : 3
  });

  seulgi2.sayName();

  seulgi2.setId = 20;

  seulgi2.sayName();

  BoyGroup rm = BoyGroup ('RM', 'BTS', 100);
  rm.sayName();
  rm.sayMale();


  GirlGroup wendy = GirlGroup('웬디', '레드벨벳', 200);
  wendy.sayName();
  wendy.sayFemale();
  print(wendy.getId);



}


class Idol {

  final name;
  final group;
  int _id;//_를 붙이면 private

  //생성자
  Idol (String name, String group, int id) :
        this.name = name, this.group = group, this._id = id;

  //생성자
  Idol.fromMap( Map map ) :
        this.name = map['name'], this.group = map['group'], this._id = map['id'];

  
  void sayName(){
    print('$_id 저는 $group 의 $name 입니다.');
  }

  //getter
  get getId {
    return _id;
  }

  //setter
  set setId (int id){
    this._id = id;
  }
}

//상속
class BoyGroup extends Idol {

  BoyGroup( String name, String group, int id ) :
        super( name, group, id);

  void sayMale(){
    print('저는 남자 아이돌 입니다.');
  }

}

class GirlGroup extends Idol {

  GirlGroup ( String name, String group, int id ) :
        super( name, group, id);

  void sayFemale(){
    print('저는 여자 아이돌 입니다.');
  }

}