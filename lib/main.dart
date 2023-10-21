import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/lembrete/Lembrete.dart';
import 'ui/miniGame/miniGame.dart';
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
          primaryColor: Color.fromARGB(255, 255, 255, 255),
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 255, 0, 0),
            onPrimary: Colors.white,
            secondary: Color(0xff62b0bc),
            onSecondary: Colors.white,
            error: Color.fromARGB(255, 255, 0, 0),
            onError: Colors.white,
            background: Colors.white,
            onBackground: Colors.black,
            surface: Colors.white,
            onSurface: Colors.black,
          ),
          typography: Typography.material2018(),
          inputDecorationTheme: InputDecorationTheme(
            iconColor: const Color.fromARGB(255, 255, 255, 255),
            focusColor: Color.fromARGB(255, 255, 255, 255),
            labelStyle: const TextStyle(fontSize: 20.0, color: Colors.grey),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(10.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(10.0)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3.0,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                borderRadius: BorderRadius.circular(10.0)),
          )), //Trocar pra Splash
    ));
  });
}


