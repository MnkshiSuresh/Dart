import 'dart:io';
//=======inheritance and class========//

abstract class Animal{
  void sayHello(){
    print('Animal say hello');
  }
}

class Human extends Animal{
  void sayName(){
    print('say name');
  }
  @override
  void sayHello(){
    print('heloooooiii');
    super.sayHello();                    //Base class is inherited and functions overriden here. 
  }
}

abstract class Bunny{
  void prints();
}

class Rabbit implements Bunny{        //INTERFACE implementation!!
  @override
  void prints(){
    print("im a bunny.");
  }
}

void main(List<String> args){
            //entry point
            //final animal= Animal();       //abstract!! 

            final human= Human();
            human.sayName();
            human.sayHello();
            //animal.sayHello();
            final rabbit=Rabbit();
            rabbit.prints();

}
