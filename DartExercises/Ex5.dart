void main(){
  // Create 2 different lists
  List A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List B = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  // Convert lists to sets to avoid repeating numbers
  var A1 = A.toSet();
  var B1 = B.toSet();

  // Print the intersection of two sets as list
  var inter = A1.intersection(B1);
  print(inter.toList());

}