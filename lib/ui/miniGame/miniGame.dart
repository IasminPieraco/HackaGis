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
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center, // Alinhe a Column ao centro vertical
          crossAxisAlignment:
              CrossAxisAlignment.center, // Alinhe a Column ao centro horizontal
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                  top: 45.0, bottom: 25.0), // Margem no topo para o "Mini-game"
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
                        right: 25.0, bottom: 45.0), // Margem para a Column
                    child: Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.red,
                        ),
                        const Text(
                          'Jogo Memória',
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
                          color: Colors.red,
                        ),
                        const Text(
                          'Jogo Memória',
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
                          color: Colors.red,
                        ),
                        const Text(
                          'Jogo Memória',
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
                          color: Colors.red,
                        ),
                        const Text(
                          'Jogo Memória',
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
                                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                          ),
                        ),
                        const Text(
                          'Jogo Memória',
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
                          color: Colors.red,
                        ),
                        const Text(
                          'Jogo Memória',
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
    );
  }
}
