import 'package:flutter/material.dart';
import 'ui/PostoProx/PostoProx.dart';
import 'ui/Contatos/contatos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContatosStateful(), // Aqui você define sua tela inicial como PostoProxStateful
    );
  }
}


