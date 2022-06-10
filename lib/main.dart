import 'package:flutter/material.dart';
import 'package:testtabcontroller/screen/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'dialog',
      routes:{
        'tabs': (context) => const  TabsScreen(),
        'dialog': (context) => const DialogScreen()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      )
    
    );
  }
}