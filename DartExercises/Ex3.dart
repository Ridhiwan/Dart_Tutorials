void main(){
  List numbers = [1, 1, 2, 3, 4, 4.7,1.9,3.6,5, 8, 13, 21, 34, 55, 89];

  for (int i = 0; i < numbers.length; i++){
    if(numbers[i] < 5){
      print(numbers[i]);
    } else{
      continue;
    }
  }
}