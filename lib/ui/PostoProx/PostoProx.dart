import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class PostoProxStateful extends StatefulWidget {
  const PostoProxStateful({Key? key}) : super(key: key);

  @override
  _PostoProxStatefulState createState() => _PostoProxStatefulState();
}

class _PostoProxStatefulState extends State<PostoProxStateful> {
  var ubs = "";
  var endereco = "";
  var distancia = ""; // Por exemplo
  var telefone = ""; // Número de telefone da UBS
  var fontStyle = "Arial";
  var selecIcon = [
    Colors.red,
    Colors.red,
    Colors.red,
  ];
/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 80,
              width: 380,
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 50,
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
            Text(
              'Posto de Saúde Próximo',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: fontStyle),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 400,
              height: 300,
              child: MapaWidget(),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 370,
              height: 45,
              child: textDes("UBS: $ubs"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 370,
              height: 45,
              child: textDes("Endereço: $endereco"),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 370,
              height: 50,
              child: textDes("Distância: $distancia"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 370,
              height: 45,
              child: textDes("Telefone: $telefone"),
            ),
          ],
        ),
      ),
      //Conteiner(),
      backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 0, 102, 235), // tela de fundo
              Color.fromARGB(255, 133, 100, 138)

            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80,
                width: 380,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 50,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ),
              Text(
                'Posto de Saúde Próximo',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: fontStyle,
                    shadows: const [
                      Shadow(color: Colors.black, blurRadius: 5)
                    ]),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 400,
                height: 300,
                child: MapaWidget(),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 370,
                height: 45,
                child: textDes("UBS: $ubs"),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 370,
                height: 45,
                child: textDes("Endereço: $endereco"),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 370,
                height: 50,
                child: textDes("Distância: $distancia"),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 370,
                height: 45,
                child: textDes("Telefone: $telefone"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textDes(String text) {
    return Scaffold(
      body: Text(
        text,
        style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: fontStyle,
            shadows: const [Shadow(color: Colors.black, blurRadius: 5)]),
        textAlign: TextAlign.left,
      ),
      backgroundColor: const Color.fromRGBO(0, 0, 255, 255),
    );
  }

// ignore: non_constant_identifier_names
  Widget MapaWidget() {
    return Scaffold(
        body: Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            initialCenter:
                const LatLng(-19.761801271351505, -47.96352284916885),
            initialZoom: 14,
            cameraConstraint: CameraConstraint.contain(
              bounds: LatLngBounds(
                const LatLng(-90, -180),
                const LatLng(90, 180),
              ),
            ),
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            ),
            MarkerLayer(markers: [
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(-19.765578885587512, -47.95651791790178),
                  child: mark(
                      "UBS Juca Inácio",
                      "R. Sinei Higa, 162 - Santa Maria, Uberaba - MG, 38050-070",
                      "2 km",
                      "(034) 3314-8150",
                      0)),
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(-19.767949107572836, -47.96950458779025),
                  child: mark(
                      "UBS Planalto",
                      "R. Asa Norte, 215 - Planalto, Uberaba - MG, 38045-255",
                      "4 km",
                      "(034) 3314-8150",
                      1)),
              Marker(
                  width: 50,
                  height: 50,
                  point: const LatLng(-19.77313384547731, -47.96084680830409),
                  child: mark(
                      "USF Lecir Nunes Ramos",
                      "Rua, Av. Maria Rodrigues Cunha Rezende, 481 - Parque das Americas, Uberaba - MG, 38045-400",
                      "5 km",
                      "(034) 3338-9334",
                      2)),
            ])
          ],
        ),
      ],
    ));
  }

  Widget mark(String name, String ende, String dis, String tel, int pos) {
    var cor = selecIcon[pos];
    return GestureDetector(
        onTap: () {
          setState(() {
            ubs = name;
            endereco = ende;
            distancia = dis; // Por exemplo
            telefone = tel; // Número de telefone da UBS
            fontStyle = "Arial";

            switch (pos) {
              case 0:
                selecIcon = [
                  Colors.green,
                  Colors.red,
                  Colors.red,
                ];
                break;
              case 1:
                selecIcon = [
                  Colors.red,
                  Colors.green,
                  Colors.red,
                ];
                break;
              case 2:
                selecIcon = [
                  Colors.red,
                  Colors.red,
                  Colors.green,
                ];
                break;
            }
          });
        },
        child: Icon(
          Icons.location_on,
          color: cor,
          size: 50,
        ));
  }
}
