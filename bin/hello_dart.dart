void main(List<String> arguments) {

  print('Hello world!');


  //변수선언
  var str = 'string';
  print(str);

  //숫자변수
  int number1 = 12;

  print(number1);

  double number2 = 1.2;

  print(number2);


  //문자열
  String name = "슬기";
  String group = "레드벨벳";

  print(name + '는 '+ group);
  print('$name 는 $group 맴버 입니다.');
  print('${name + ' ' +group} 입니다.');

  //boolean
  bool isTrue = true;
  bool isFalse = false;



  var value1 = 'value';// String 타입만 가능
  dynamic value2 = 'value';//다이나믹 변수형


  //List
  List btsList = ['진','슈가','제이홉'];

  List<String> redVelvetList = ['아이린','슬기','웬디'];


  print(btsList);
  print(redVelvetList);
  print(redVelvetList[0]);
  print(redVelvetList[1]);
  print(redVelvetList[2]);
  print(redVelvetList.length);



  //Map
  Map dictionary = {
    'harry' : '해리포터',
    'ron' : '론 위즐리'
  };

  Map<String, String> dictionary2 = {
    'harry' : '해리포터',
    'ron' : '론 위즐리'
  };

  print(dictionary);
  print(dictionary2);

  dictionary2.addAll(
    {'hermione' : '헤르미온느'}
  );

  print(dictionary2);

  dictionary2['hermione'] = '헤르헤르미미온으느느느';

  print(dictionary2);

  dictionary2.remove('hermione');

  print(dictionary2);

  print(dictionary2.keys.toList());

  print(dictionary2.values.toList());




  //final, const
  final fName = '블랙핑크';//값 변경불가 , 런타임에만 값지정
  const cName = '블랙핑크';//값 변경불가 , 빌드시에 값지정






}
