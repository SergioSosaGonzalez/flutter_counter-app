import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage>{
  final TextStyle _textStyle = new TextStyle( fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Numero de clicks', style: _textStyle,),
            Text('$_conteo',  style: _textStyle),
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget> [
        FloatingActionButton(
          onPressed: reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded( child: SizedBox(),),
        FloatingActionButton(
          onPressed: sustraer,
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 5,),
        FloatingActionButton(
          onPressed: agregar,
          child: Icon(Icons.add),
        )
      ],
    );
  }

  void agregar() {
    setState(()  => _conteo++);
    
  }

  void sustraer() {
    setState(() { 
      if(_conteo <= 0 )_conteo = 0;
      else _conteo--;
    });
  }

  void reset() {
    setState(() => _conteo = 0);
  }

}