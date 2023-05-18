import 'dart:io';
//=============Exception handling============//
class InvalidphonenumberException implements Exception {}

bool? validatephonenumber(String phone) { 
  if(phone.length ==10){
         return true;
}
else{
  throw InvalidphonenumberException();
  }
}

 void main(List<String> args){
  //entry point.
  try{
    final phoneValid= validatephonenumber('656');
  }
  on InvalidphonenumberException catch(_) {           //e or _
        print("invalid phone number ");   
  }  
   catch(e)
  {
    print(e);     //instance of invalidphonenumberexception
  }
 }
