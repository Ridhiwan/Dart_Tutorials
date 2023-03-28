import 'dart:async';

void main() async{
print('Ready. Sing. ');
line1();
print(await line2());
}

Future<void> line1(){
  return Future.delayed(Duration(seconds: 2),
          ()=>print('Happy Birthday to You.'));
}
// When the function is not void async and await are necessary
// on the function and in the main function
Future<String> line2() async{
  String lyric = 'Happy Birthday to You.';
  return await Future.delayed(Duration(seconds: 4),
          () => lyric);
}