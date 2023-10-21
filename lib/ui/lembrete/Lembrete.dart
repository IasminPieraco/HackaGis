import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/LembreteModel.dart';

class LembreteStateful extends StatefulWidget {
  const LembreteStateful({Key? key}) : super(key: key);

  @override
  _LembreteStatefulState createState() => _LembreteStatefulState();
}

class _LembreteStatefulState extends State<LembreteStateful> {
  List<Infos> lembretes = [];
  List<Widget> cards = [];

  _LembreteStatefulState() {
    initLembretes(); // Chame o método de inicialização no construtor
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < lembretes.length; i++) {
      cards.add(_lembreteCard(context, i));
    }

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 2, 74, 133),
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  padding: const EdgeInsets.all(10),
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 42,
                  onPressed: () {},
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            title: const Text(
              "Lembrete",
              style: TextStyle(
                fontFamily: "Arial",
                fontSize: 32,
              ),
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 102, 235),
                  Color.fromARGB(255, 223, 223, 235),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SingleChildScrollView(
              child: lembretes.isEmpty
                  ? const Center(
                      child: Text(
                        "Não há atividades cadastradas",
                        style: TextStyle(
                          color: Color.fromARGB(255, 34, 45, 97),
                          fontSize: 22.0,
                        ),
                      ),
                    )
                  : Center(
                      child: Column(
                        children: cards,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _lembreteCard(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.only(top: 45),
      color: Color.fromARGB(255, 32, 41, 88),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Column(
        children: [
          IconButton(
            padding: EdgeInsets.all(5),
            icon: Icon(
              Icons.cancel,
              color: Color.fromARGB(255, 247, 16, 0),
            ),
            onPressed: () {
              setState(() {
                lembretes.removeAt(index);
                cards = [];
                for (int i = 0; i < lembretes.length; i++) {
                  cards.add(_lembreteCard(context, i));
                }
              });
            },
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    lembretes[index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(
                    width: 62,
                  ),
                  Text(
                    DateFormat('kk:mm').format(lembretes[index].horario),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 62,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void initLembretes() {
    lembretes.add(Infos());
    lembretes.add(Infos());
    lembretes.add(Infos());
    lembretes.add(Infos());
    lembretes.add(Infos());
    lembretes[0].name = "Wagner";
    lembretes[1].name = "Rose";
    lembretes[2].name = "Ademar";
    lembretes[3].name = "Claudio";
    lembretes[4].name = "Moreira";
    lembretes[0].horario = DateTime.now();
    lembretes[1].horario = DateTime.now();
    lembretes[2].horario = DateTime.now();
    lembretes[3].horario = DateTime.now();
    lembretes[4].horario = DateTime.now();
  }
}
