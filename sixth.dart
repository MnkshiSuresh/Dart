
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    
      return MaterialApp(             //optional named parameter
          theme: ThemeData(
            primaryColor:  Colors.indigo,

          ),
          home: HomeScreen(),
      );
    }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar:AppBar() ,
    );
  }
}
