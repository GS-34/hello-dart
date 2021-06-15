
//함수
void main(List<String> arguments) {

  print(met1(1, 2, 3));


  print(optional(1, 2));


  print(named(1, 2, c:3));

  
  calc(1, 2, add);

  calc(1, 2, sub);

  
}

double met1(double a, double b, double c){
  return a * b + c;
}

//옵셔널 파라미터
double optional(double a, double b, [double c = 4]){
  return a * b + c;
}

//네임드 파라미터
double named(double a, double b, {required double c}){
  return a * b + c;
}

//함수형?
typedef void Operation(int x, int y);

void add(int x, int y){
  print('결과값 : ${x + y}');
}

void sub(int x, int y){
  print('결과값 : ${x - y}');
}

void calc(int x, int y, Operation operation){
  operation(x,y);
}