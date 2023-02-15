void main(){
  dynamic addTwo(x,y){
    return x + y;
  }

  dynamic subtractTwo(x,y){
    return x - y;
  }

  dynamic multiplyTwo(x,y){
    return x*y;
  }

  dynamic divideTwo(x,y){
    return x/y;
  }

  int stringLength(String x){
    return x.length;
  }

  dynamic getFirstelement(List x){
    return x[0];
  }
  print(getFirstelement([1,2,3,4,5,67,9]));

}