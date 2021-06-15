
//List 함수
void main(List<String> arguments) {

  List members = [
    {
      'id' : 0,
      'name' :  '슬기'
    },
    {
      'id' : 1,
      'name' :  '아이린'
    },
    {
      'id' : 2,
      'name' :  '조이'
    },
  ];

  //첫번째로 조건에 해당하는 아이템 찾기
  var item = members.firstWhere((element) => element['id'] == 1);
  print(item);
  

  //조건에 해당하는 아이템의 index 찾기
  var index = members.indexWhere((element) => element['id'] == 1);
  print(index);

  //값이 20인 index 찾기
  var index2 = [10,20,30].indexOf(20);
  print(index2);

  //list에 30이 존재하는가?
  var contains = [10,20,30].contains(30);
  print(contains);


  members.forEach((element) {
    print(element);
  });


  //특정 요소만 추출하여 새로운 리스트 생성
  var names = members.map((e) => e['name']);
  print(names);

  var fold = members.fold(0, (dynamic t, dynamic e){
    return t + e['id'];
  });
  print(fold);

  var reduce = [1,2,3,4,5].reduce((t,e) => t+e);
  print(reduce);


  members.shuffle();
  print(members);

}
