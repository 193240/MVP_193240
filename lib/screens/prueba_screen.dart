import 'package:flutter/material.dart';

class PruebaScreen extends StatelessWidget{
  @override
  Widget build(BuildContext contex){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material'),
          elevation: 0,//shadow del tittle
        ),
        body: Center(
          child:  Container(
            child: const Text('prueba')
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined),
              label: 'us',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined),
              label: 'us',
            ),
          ],

        ),
      );
  }
}