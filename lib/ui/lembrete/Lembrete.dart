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

  @override
  void initState() {
    super.initState();

    setState(() {
      initLembretes();
      for (int i = 0; i < lembretes.length; i++) {
        cards.add(_lembreteCard(context, i));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                padding: const EdgeInsets.all(10),
                icon: const Icon(Icons.arrow_back),
                iconSize: 40,
                onPressed: () {},
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
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
        body: SingleChildScrollView(
          child: lembretes.isEmpty
              ? const Center(
                  child: Text(
                    "Não há atividades cadastradas",
                    style: TextStyle(
                      color: Colors.blue,
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
        /*floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: (selectedCount > 0)
            ? Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    right: ScreenSize.width / 20.5714,
                    bottom: 0,
                    child: addNewPermissionButton(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: deleteSelectedButton(selectedCount),
                  )
                ],
              )
            : Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    right: ScreenSize.width / 20.5714,
                    bottom: 0,
                    child: addNewPermissionButton(),
                  ),
                ],
              ),*/
      ),
    ));
  }

  Widget _lembreteCard(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.only(top: 30),
      color: Colors.blueAccent,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          IconButton(
            icon: const Icon(
              Icons.cancel,
              color: Colors.red,
            ),
            onPressed: (){
              setState(() {
                lembretes.removeAt(index);
                cards = [];
                for(int i = 0; i < lembretes.length; i++){
                  cards.add(_lembreteCard(context, i));
                }
              });
            },
          ),
          SizedBox(
            width: 300,
            height: 70,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    lembretes[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    DateFormat('kk:mm').format(lembretes[index].horario),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black),
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
