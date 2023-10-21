import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/lembrete/Lembrete.dart';

void main() async{

  //carregaAluno();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]) //Força a utilização do modo retrato sempre
      .then((_) {
    runApp(MaterialApp(
      home: const LembreteStateful(),
      theme: ThemeData(
          primaryColor: const Color(0xffa93e7b),
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xffa93e7b),
            onPrimary: Colors.white,
            secondary: Color(0xff62b0bc),
            onSecondary: Colors.white,
            error: Colors.redAccent,
            onError: Colors.white,
            background: Colors.white,
            onBackground: Colors.black,
            surface: Colors.white,
            onSurface: Colors.black,
          ),
          typography: Typography.material2018(),
          inputDecorationTheme: InputDecorationTheme(
            iconColor: Colors.grey,
            focusColor: const Color(0xffa93e7b),
            labelStyle: const TextStyle(fontSize: 20.0, color: Colors.grey),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Color(0xffa93e7b),
                ),
                borderRadius: BorderRadius.circular(10.0)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Colors.redAccent,
                ),
                borderRadius: BorderRadius.circular(10.0)),
          )), //Trocar pra Splash
    ));
  });
}
