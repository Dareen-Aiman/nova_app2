import 'package:flutter/material.dart';


class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
      body:  Center(
        child: Text('Body'),),
      bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home),),],),
    );
  }
}
