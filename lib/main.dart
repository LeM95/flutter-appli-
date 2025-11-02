import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled2/pages/Home_page.dart';
import 'package:untitled2/pages/Service_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0 ;

  setCurrentIndex(int index ){
    setState(() {
      _currentIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Produit2Fou"),
        ),
        body:[
          HomePage(),
          service()
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex : _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_sharp),
                label: 'Reveil'
            )

          ],
        ),
      ),
    );
  }
}






