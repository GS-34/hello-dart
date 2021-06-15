
//Map 함
void main(List<String> arguments) {

  Map price = {
    'iPhone' : 1500000,
    'Galaxy' : 1000000,
    'Apple Watch' : 500000,
  };

  print(price.isEmpty);
  print(price.isNotEmpty);
  print(price.keys);
  print(price.values);
  print(price.length);



  //값 추가
  price.addAll({
    'Airpds' : 390000,
    'Trackpad' : 100000,
  });
  
  print(price);
  
  price.addEntries([
    MapEntry('XXX', 500000),
    MapEntry('ZZZ', 400000),
  ]);

  print(price);

  price['test'] = 9999;



  //값 수정
  price.update('iPhone', (value) => value * 10);

  print(price);

  //값이있으면 수정, 없으면 생성
  price.putIfAbsent('Macbook', () => 2450000);

  print(price);

  //값 일괄 수
  price.updateAll((key, value) => value.toString() + ' 원');

  print(price);
  
  
  //삭제
  price.remove('Macbook');
  print(price);
  
  //조건부 삭제
  price.removeWhere((key, value) => key == 'Trackpad');
  print(price);

}