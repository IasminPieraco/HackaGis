import 'package:flutter/material.dart';

class ContatosStateful extends StatefulWidget {
  const ContatosStateful({Key? key}) : super(key: key);

  @override
  _ContatosStatefulState createState() => _ContatosStatefulState();
}

class _ContatosStatefulState extends State<ContatosStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 45, 97),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 102, 235), // tela de fundo
              Color.fromARGB(255, 133, 100, 138),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, size: 40,),
                      color: Colors.white,
                      onPressed: () {
                        // Lógica para voltar à tela anterior
                      },
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 220,
                      height: 50,
                      child: Text(
                        "Escolha um contato da lista para ligar",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: "Arial",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                contact("Bruno", "123456789", Icons.person),
                SizedBox(height: 30),
                contact("Iasmin", "987654321", Icons.person),
                SizedBox(height: 30),
                contact("Igor", "6406467994", Icons.person),
                SizedBox(height: 30),
                contact("José", "997623158", Icons.person),
                SizedBox(height: 30),
                contact("Vinicius", "14861849", Icons.person),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Lógica para o botão de confirmar
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 10),
                    child: Text(
                      "Confirmar",
                      style: TextStyle(fontSize: 17.5),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget contact(String name, String number, IconData icon) {
    return Container(
      width: 400,
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 34, 45, 97),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              icon,
              color: Colors.white,
              size: 36,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                number,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {
                // Lógica para chamar o número
              },
              child: Icon(Icons.phone, color: Colors.white),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                primary: Colors.green,
                minimumSize: Size(50, 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
