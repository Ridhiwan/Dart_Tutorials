
void main(){
  List list1 = [1,2,3,5,6,7,8,9,9,3,4,6,7];
  List list2 = [];

  for (var i = 0; i < list1.length ; i++){
    if (list2.contains(list1[i]) ){
      continue;
    } else {
      list2.add(list1[i]);
    }
  }
  print(list2);
}