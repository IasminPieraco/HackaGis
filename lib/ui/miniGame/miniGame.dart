import 'dart:math';

import 'package:flutter/material.dart';

class miniGame extends StatefulWidget {
  const miniGame({Key? key}) : super(key: key);

  @override
  MeuContainerPersonalizado createState() => MeuContainerPersonalizado();
}

class MeuContainerPersonalizado extends State<miniGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
              Color.fromARGB(255, 0, 102, 235), // tela de fundo
              Color.fromARGB(255, 133, 100, 138),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center, // Alinhe a Column ao centro vertical
          crossAxisAlignment:
              CrossAxisAlignment.center, // Alinhe a Column ao centro horizontal
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 45.0, bottom: 25.0),
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
            Container(
              margin: const EdgeInsets.only(bottom: 25.0), // Margem no topo para o "Mini-game"
              child: const Text(
                'Mini-game',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 32, // Tamanho da fonte
                  color: Colors.white, // Cor do texto
                  fontWeight: FontWeight.bold, // Peso da fonte (negrito)
                  fontStyle: FontStyle.italic, // Estilo da fonte (itálico)
                ),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Alinhe a Column ao centro vertical
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20.00, right: 25.0, bottom: 45.0), // Margem para a Column
                    child: Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          margin: const EdgeInsets.only(right:5.00, bottom: 5.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.6), // Cor e opacidade da sombra
                                spreadRadius: 2, // Raio de propagação
                                blurRadius: 5, // Raio de desfoque
                                offset: const Offset(0, 2), // Deslocamento da sombra
                              ),
                            ],
                          ),
                          child: const Image(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN9xK743flREIShjWSzLomHEwvNWQ5c3v22w&usqp=CAU"),
                          ),
                        ),
                        const Text(
                          'Xadrez',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20, // Tamanho da fonte
                            color: Colors.white, // Cor do texto
                            fontWeight:
                                FontWeight.bold, // Peso da fonte (negrito)
                            fontStyle:
                                FontStyle.italic, // Estilo da fonte (itálico)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 25.0, bottom: 45.0), // Margem para a Column
                    child: Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                           margin: const EdgeInsets.only(bottom: 5.0),
                           decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.6), // Cor e opacidade da sombra
                                spreadRadius: 2, // Raio de propagação
                                blurRadius: 5, // Raio de desfoque
                                offset: const Offset(0, 2), // Deslocamento da sombra
                              ),
                            ],
                          ),
                          child: const Image(
                            image: NetworkImage(
                                'https://cdn.jogos360.com.br/fl/ow/flow-free-online-d.jpg'),
                          ),
                        ),
                        const Text(
                          'Ligar pontos',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20, // Tamanho da fonte
                            color: Colors.white, // Cor do texto
                            fontWeight:
                                FontWeight.bold, // Peso da fonte (negrito)
                            fontStyle:
                                FontStyle.italic, // Estilo da fonte (itálico)
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Alinhe a Column ao centro vertical
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                        right: 25.0, bottom: 45.0), // Margem para a Column
                    child: Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          margin: const EdgeInsets.only(bottom: 5.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.6), // Cor e opacidade da sombra
                                spreadRadius: 2, // Raio de propagação
                                blurRadius: 5, // Raio de desfoque
                                offset: const Offset(0, 2), // Deslocamento da sombra
                              ),
                            ],
                          ),
                          child: const Image(
                            image: NetworkImage(
                                'https://play-lh.googleusercontent.com/Z8POooV_zDQqc4mxNVGNdLURb8Do_MNsaOgd2eKNFkpBJwpEIlt40tixPV1qQ8YHi9qC=w240-h480-rw'),
                          ),
                        ),
                        const Text(
                          'Caça-Palavras',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20, // Tamanho da fonte
                            color: Colors.white, // Cor do texto
                            fontWeight:
                                FontWeight.bold, // Peso da fonte (negrito)
                            fontStyle:
                                FontStyle.italic, // Estilo da fonte (itálico)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 25.0, bottom: 45.0), // Margem para a Column
                    child: Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                           margin: const EdgeInsets.only(bottom: 5.0),
                           decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.6), // Cor e opacidade da sombra
                                spreadRadius: 2, // Raio de propagação
                                blurRadius: 5, // Raio de desfoque
                                offset: const Offset(0, 2), // Deslocamento da sombra
                              ),
                            ],
                          ),
                          child: const Image(
                            image: NetworkImage(
                                'https://brstatic.guiainfantil.com/pictures/materias/21125-forca-jogo-de-palavras-para-as-criancas.jpg'),
                          ),
                        ),
                        const Text(
                          'Forca',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20, // Tamanho da fonte
                            color: Colors.white, // Cor do texto
                            fontWeight:
                                FontWeight.bold, // Peso da fonte (negrito)
                            fontStyle:
                                FontStyle.italic, // Estilo da fonte (itálico)
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Alinhe a Column ao centro vertical
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                       left: 35.0,  right: 25.0, bottom: 45.0), // Margem para a Column
                    child: Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                           margin: const EdgeInsets.only(bottom: 5.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.6), // Cor e opacidade da sombra
                                spreadRadius: 2, // Raio de propagação
                                blurRadius: 5, // Raio de desfoque
                                offset: const Offset(0, 2), // Deslocamento da sombra
                              ),
                            ],
                          ),
                          child: const Image(
                            image: NetworkImage(
                                'https://i.pinimg.com/736x/ba/80/60/ba8060002e59b69c9c88e7ef8ed92f1b.jpg'),
                          ),
                        ),
                        const Text(
                          'Sudoku',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20, // Tamanho da fonte
                            color: Colors.white, // Cor do texto
                            fontWeight:
                                FontWeight.bold, // Peso da fonte (negrito)
                            fontStyle:
                                FontStyle.italic, // Estilo da fonte (itálico)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                     left: 5, bottom: 45.0), // Margem para a Column
                    child: Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          margin: const EdgeInsets.only(bottom: 5.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.6), // Cor e opacidade da sombra
                                spreadRadius: 2, // Raio de propagação
                                blurRadius: 5, // Raio de desfoque
                                offset: const Offset(0, 2), // Deslocamento da sombra
                              ),
                            ],
                          ),
                          child: const Image(
                            image: NetworkImage(
                                'https://img.elo7.com.br/product/main/420C8D1/jogo-da-memoria-fundo-do-mar.jpg'),
                          ),
                        ),
                        const Text(
                          'Jogo da Memoria',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 20, // Tamanho da fonte
                            color: Colors.white, // Cor do texto
                            fontWeight:
                                FontWeight.bold, // Peso da fonte (negrito)
                            fontStyle:
                                FontStyle.italic, // Estilo da fonte (itálico)
                          ),
                        ),
                      ],
                    ),
                  ),
                ])
          ],
        ),
      ),
      ),
    );
  }
}
