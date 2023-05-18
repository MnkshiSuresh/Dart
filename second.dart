import 'dart:io';

void main(){
   sum();
   sumparams(2,55);
   sumreturn(10,77);//wont give o/p
   var a=sumreturn(3,4);//variable declared
   print(a);
   sumReq(f: 2,s: 5,t: 7);
   sumFunction(23,25, sumparams);
   product(12,11,(int f,int s){
    print('product=${f*s}');
   } );
   sumFuture(12,12);
   print("Some functions");
   sumFuture1(4, 5);
   print('this line is executed first cause the future function1 is delayed for 6 sec');
   sum2();
   print('after future');
   }

void sum(){
  print(2+3);
}
void sumparams(int a,int b){
  print('${a+b}');
}
int sumreturn(int a,int b){
  return a+b;

}
//required,optional,default parameters===>NAMED PARAMETERS

void sumReq({required int f,required int s,int? t}){
  if(t==null){
    t=0;              //null check done
  }
  print(f + s + t);
}

//function within function:
void sumFunction(int a,int b,void Function(int,int) customSum){
   customSum(a,b);
}

//Anonymous functions

void product(int a,int b,void Function(int,int) customSum){
   customSum(a,b);
}

//Future fuctions
Future<void> sumFuture(int a,int b) async{
  print('Sum Future ${a+b}');
}

//Future fuctions with delayed
Future<void> sumFuture1(int a,int b) async{
  await Future.delayed(Duration(seconds: 6));
  print('Sum Future1 ${a+b}');
}

//awaits and nested future functions

Future<int> sum1(int a,int b) async{
  await Future.delayed(Duration(seconds: 3));
  print('in some future ${a+b}');
  return a+b;
}
Future<void> sum2() async{
  await sum1(33,1);
  print("In just sum ");
}
