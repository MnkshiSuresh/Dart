import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 47, 148),
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Meenakshi learning FLUTTER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('Text button clicked');
                          },
                          child: Text('click me'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.info),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('elevated button clicked');
                      },
                      child: Text('click me'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.red,
                    width: 10,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Simple Course',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Meenakshi learning FLUTTER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('Text button clicked');
                          },
                          child: Text('click me'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.info),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('elevated button clicked');
                      },
                      child: Text('click me'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
