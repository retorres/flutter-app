import 'package:flutter/material.dart';
import 'package:myapp/pages/home/HomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      initialRoute: '/',
      routes: {
        '/' :  (ctx)=> HomePage(),
      },

    );
  }
}
