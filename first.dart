import 'dart:io';
void main(){
  print('enter the no of values in the list');
  var int1=stdin.readLineSync();
  var num1=int.parse(int1!);
  var array=[21,23,'me',45.0];
  if(array.contains('me')){
    print("contains");
  }else{
    print("no");
  }print(array);
}
