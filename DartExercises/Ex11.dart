import 'dart:math';

void main(){

  dynamic listEditor(){
    final random = Random();
    List incomingList = List.generate(10, (_) => random.nextInt(100));

    List outList = [incomingList.first,incomingList.last];
    print(outList);
  }

  listEditor();
}