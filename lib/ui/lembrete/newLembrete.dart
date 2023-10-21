import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/LembreteModel.dart';

class newLembreteStateful extends StatefulWidget {
  const newLembreteStateful({Key? key}) : super(key: key);

  @override
  _newLembreteStatefulState createState() => _newLembreteStatefulState();
}

class _newLembreteStatefulState extends State<newLembreteStateful> {
  List<Infos> lembretes = [];
  List<Widget> cards = [];

  _newLembreteStatefulState() {
    // Chame o método de inicialização no construtor
  }

  TextEditingController _NameController = TextEditingController();

  String typeDropHr = "00";
  String typeDropMin = "00";

  List<String> hrs = [
    "00",
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23"
  ];

  List<String> numeros = [
    "00",
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
    "09",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 2, 74, 133),
          resizeToAvoidBottomInset: false,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 102, 235),
                  Color.fromARGB(255, 191, 191, 206),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 45, bottom: 25.0),
                  height: 80,
                  width: 380,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 50,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Text(
                  'Novo Lembrete',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Arial"),
                ),
                const SizedBox(height: 50),
                Center(
                    child: Form(
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 20,
                        height: 100,
                        child: TextFormField(
                          cursorColor: Colors.black,
                          textAlign: TextAlign.center,
                          controller: _NameController,
                          decoration: const InputDecoration(
                              labelText: 'Nome do lembrete',
                              focusColor: Colors.black,
                              hoverColor: Colors.black,
                              fillColor: Colors.black,
                              labelStyle: TextStyle(color: Colors.black)),
                          style: const TextStyle(
                            fontSize: 32.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Alterar:",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 45),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            width: 81,
                            height: 100,
                            child: DropdownButtonFormField(
                              style: const TextStyle(
                                fontSize: 50.0,
                                color: Colors.black,
                              ),
                              value: typeDropHr,
                              onChanged: (String? newValue) {
                                setState(() {
                                  typeDropHr = newValue!;
                                });
                              },
                              items: hrs.map((String hr) {
                                return DropdownMenuItem(
                                  value: hr,
                                  child: Text(hr),
                                );
                              }).toList(),
                            ),
                          ),
                          Text(
                            ":",
                            style: TextStyle(color: Colors.black, fontSize: 50),
                          ),
                          Container(
                            width: 81,
                            height: 100,
                            child: DropdownButtonFormField(
                              style: const TextStyle(
                                fontSize: 50.0,
                                color: Colors.black,
                              ),
                              value: typeDropMin,
                              onChanged: (String? newValue) {
                                setState(() {
                                  typeDropMin = newValue!;
                                });
                              },
                              items: numeros.map((String min) {
                                return DropdownMenuItem(
                                  value: min,
                                  child: Text(min),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                ))
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                right: 10,
                bottom: 0,
                child: _ComfirmLembrete(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ComfirmLembrete() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      height: 80,
      width: MediaQuery.of(context).size.width - 20,
      child: IconButton(
        color: Colors.black,
        icon: Icon(
          Icons.check,
          size: 40,
        ),
        onPressed: () async {
          Infos newLembrete = Infos();
          newLembrete.name = _NameController.text;
          newLembrete.horario = DateTime(1,1,1,int.parse(typeDropHr),int.parse(typeDropMin),0,0);
          Navigator.pop(context,newLembrete);
        },
      ),
    );
  }
}
