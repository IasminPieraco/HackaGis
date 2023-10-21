import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/LembreteModel.dart';
import 'package:seuamigodasaude/ui/lembrete/newLembrete.dart';

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
            child: lembretes.isEmpty
                  ? Column(
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
                          'Posto de Saúde Próximo',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "Arial"),
                        ),
                        const SizedBox(height: 50),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                "Não há atividades cadastradas",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 34, 45, 97),
                                  fontSize: 35.0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  : Column(
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
                            'Lembretes',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "Arial"),
                          ),
                          const SizedBox(height: 50),
                          Container(
                            height: MediaQuery.of(context).size.height-335,
                          child:SingleChildScrollView(
                            child: Column(
                              children: [
                                Column(
                                children: cards,
                              ),
                              const SizedBox(height: 150,)
                              ]
                            ),
                          ),
                          ),
                          
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
                child: _addLembrete(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addLembrete() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(15)),
       ),
      height: 80,
      width: MediaQuery.of(context).size.width-20,
    child: IconButton(
      color: Colors.black,
      icon: Icon(
        Icons.add,
        size: 40,
      ),
      onPressed: () async {
        //TODO verificar permissão do user
        Infos? result = await Navigator.push<Infos>(
            context,
            MaterialPageRoute<Infos>(
              builder: (BuildContext context) => const newLembreteStateful(),
              settings: const RouteSettings(name: '/new_material_page'),
            ));
            print(result);
            if(result != null){
              setState(() {
             lembretes.add(result);
             cards = [];
              });
            }

      },
    ),
    );
  }

  Widget _lembreteCard(BuildContext context, int index) {
    return Card(
      margin: const EdgeInsets.only(top: 45),
      color: const Color.fromARGB(255, 32, 41, 88),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                  IconButton(
                    padding: const EdgeInsets.fromLTRB(0, 0, 45, 42),
                    alignment: Alignment.topLeft,
                    icon: const Icon(
                      size: 65,
                      Icons.cancel,
                      color: Color.fromARGB(255, 247, 16, 0),
                    ),
                    onPressed: () {
                      setState(() {
                        lembretes.removeAt(index);
                        cards = [];
                      });
                    },
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
    lembretes[0].name = "Predisin";
    lembretes[1].name = "Dipirona";
    lembretes[2].name = "Ritalina";
    lembretes[0].horario = DateTime.now();
    lembretes[1].horario = DateTime.now();
    lembretes[2].horario = DateTime.now();
  }
}
