import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final TextStyle textStyle = new TextStyle( fontSize: 25);
  final int conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ContadorPage()
      ),
    );
  }

}