import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _CalculadoraAppState createState() => _CalculadoraAppState();
}

class _CalculadoraAppState extends State<MyApp> {
  String _output = "";

  void _adicionarButton(String text) {
    setState(() {
      _output += text;
    });
  }

  void _apagarButton() {
    setState(() {
      _output = "";
    });
  }

  void _resultadoButton() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculadora"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _output,
              style: TextStyle(fontSize: 48.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton("C", _apagarButton),
                _buildButton("/", () => _adicionarButton("/")),
                _buildButton("*", () => _adicionarButton("*")),
                _buildButton("-", () => _adicionarButton("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton("7", () => _adicionarButton("7")),
                _buildButton("8", () => _adicionarButton("8")),
                _buildButton("9", () => _adicionarButton("9")),
                _buildButton("+", () => _adicionarButton("+")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton("4", () => _adicionarButton("4")),
                _buildButton("5", () => _adicionarButton("5")),
                _buildButton("6", () => _adicionarButton("6")),
                _buildButton(".", () => _adicionarButton(".")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton("1", () => _adicionarButton("1")),
                _buildButton("2", () => _adicionarButton("2")),
                _buildButton("3", () => _adicionarButton("3")),
                _buildButton("0", () => _adicionarButton("0")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton("=", () => _adicionarButton("=")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, Function() onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
