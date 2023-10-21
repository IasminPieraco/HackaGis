// Author: Diogo Nunes Batista
// LastEdit: Diogo Nunes Batista - 15/08/2023

import 'package:flutter/material.dart';
import 'package:seuamigodasaude/ui/PostoProx/PostoProx.dart';
import 'package:seuamigodasaude/ui/lembrete/Lembrete.dart';
import 'package:seuamigodasaude/ui/miniGame/miniGame.dart';

/// Tela de menu principal
class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // cria as opções com base se é ou não um usuário gestor
    List<Widget> menuOptions = _buildMenuOptionsList(context, true);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          // Definindo um gradiente linear no plano de fundo
          body: MainMenu(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 74, 133),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 102, 235), // tela de fundo
            Color.fromARGB(255, 223, 223, 235)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              50,
              0,
              50,
              50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(children: [
                  Icon(Icons.local_hospital_outlined,
                      size: 80, color: Color.fromARGB(255, 255, 255, 255)),
                  //colocar borda no icone

                  Text(
                    'Seu Amigo da Saúde',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              color: Color.fromARGB(255, 163, 194, 219),
                              blurRadius: 10)
                        ]),
                  ),
                  SizedBox(height: 10),
                ]),
                Expanded(
                  child: ListView(
                    children: menuOptions,
                  ),
                ),
                SizedBox(height: 25),
                _buildBottomOptions(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> _buildMenuOptionsList(BuildContext context, bool isManager) {
  return [
    // Lista de opções para gestores
    SizedBox(height: 9), // Reduzimos a altura de 100 para 20
    _buildMenuOption(
        text: 'Saúde Local',
        icon: Icons.health_and_safety_outlined,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const PostoProxStateful(),
                settings: const RouteSettings(name: '/saude'),
              ));
        }),
    SizedBox(height: 9), // Reduzimos a altura de 100 para 20
    _buildMenuOption(
        text: 'Remediário',
        icon: Icons.local_pharmacy_rounded,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LembreteStateful()));
        }),
    SizedBox(height: 9), // Reduzimos a altura de 100 para 20
    _buildMenuOption(
        text: 'Socorro Rápido', icon: Icons.run_circle_sharp, 
        onPressed: () {}),
    SizedBox(height: 9), // Reduzimos a altura de 100 para 20
    _buildMenuOption(
        text: 'SaúdeAmigo', icon: Icons.people_alt, onPressed: () {}),
    SizedBox(height: 9), // Reduzimos a altura de 100 para 20
    _buildMenuOption(
        text: 'Jogueterapia', icon: Icons.gamepad_outlined, 
        onPressed: () {Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const miniGame(),
                settings: const RouteSettings(name: '/minigame'),
              ));}),
  ];
}

// ...

// retorna um botão para ser usado no menu
Widget _buildMenuOption(
    {required String text,
    required IconData icon,
    required void Function()? onPressed}) {
  return SizedBox(
    width: double.infinity,
    height: 90,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        textStyle: TextStyle(fontSize: 33, shadows: [Shadow()]),
        backgroundColor: Color.fromARGB(255, 34, 45, 97),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        visualDensity: VisualDensity.compact,
        padding: const EdgeInsets.all(10),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Expanded(
              child: Text(
            text,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
          )),
          Icon(icon, size: 75)
        ],
      ),
    ),
  );
}

// retorna os widgets localizados na parte inferior do menu
Widget _buildBottomOptions(BuildContext context) {
  return Row(
    children: [
      ElevatedButton(
        onPressed: () {},
        child: Icon(
          Icons.question_mark_rounded,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Color.fromARGB(255, 34, 45, 97),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(8),
        ),
      ),
      Expanded(
        child: Text("",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: const Color.fromARGB(255, 255, 255, 255),
              overflow: TextOverflow.fade,
            )),
      ),
      ElevatedButton(
        onPressed: () {},
        child: Icon(
          Icons.close,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 40,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Color.fromARGB(255, 34, 45, 97),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(8),
        ),
      ),
    ],
  );
}
