enum Status {
  approved,
  rejected,
  pending
}

void main(List<String> arguments) {

  Status status = Status.approved;
  
  switch (status){
    case Status.approved:
      print('승인');
      break;
    case Status.rejected:
      print('거절');
      break;
    default:
      print('default');
      break;
  }



  List numbers = [1,2,3];

  for(int i = 0; i < numbers.length; i++){
    print(numbers[i]);
  }

  for(int i in numbers){
    print(i);
  }


}