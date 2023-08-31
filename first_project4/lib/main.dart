import 'package:flutter/material.dart';
void main(){

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
          centerTitle: false,
        ),
      ),
    );
  }
}
