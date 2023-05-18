import 'dart:io';
//===============MIXINS============//
mixin Animal1{
  int age=1;
  void sayHello(){                        //{Implementing mixins for MULTIPLE INHERITANCE!!}
    print('Mixins 1 says hello');
  }
}

mixin Animal2{
  int age=2;
  void sayHello(){
    print('Mixins 2 says hello');
  }
}

class Human with Animal2,Animal1{
  void prints(){
    print("Familiarised Mixins");
  }
}

void main(){
  final animal= Human();
  print(animal.age);
  animal.prints();
  animal.sayHello();
}
