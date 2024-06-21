import 'package:flutter/material.dart';

class NameList extends StatefulWidget {
  const NameList({super.key});

  @override
  State<NameList> createState() => _NameListState();
}

class _NameListState extends State<NameList> {
  final List<Map<String, String>> _characters = [
    {
      'name': 'Optimus Prime',
      'info': 'Optimus Prime es el líder de los Autobots, una facción de robots transformadores que luchan por proteger la Tierra y el universo de las fuerzas del mal. Conocido por su valentía, sabiduría y fuerte sentido de la justicia, Optimus se transforma en un camión y está equipado con poderosas armas y habilidades de combate',
      'image': 'assets/images/Optimus.png'
    },
    {
      'name': 'Bumble bee',
      'info': 'Bumblebee es uno de los personajes más queridos de los Autobots. Se caracteriza por su lealtad y coraje. A pesar de su tamaño más pequeño en comparación con otros Autobots, Bumblebee es ágil, valiente y se transforma en un deportivo amarillo. A menudo sirve como explorador y mensajero para Optimus Prime',
      'image': 'assets/images/Bee.png'
    },
    {'name': 'Drift', 'info': 'Drift es un samurái Autobot que aporta una disciplina y una técnica de combate excepcionales al equipo. Originalmente un Decepticon, Drift cambió de bando y ahora lucha por la causa Autobot con su estilo único y sus habilidades con la espada. Se transforma en un coche deportivo elegante y veloz, reflejando su agilidad y precisión en batalla', 'image': 'assets/images/Drift.png'}
  ];

  void _showCharacterInfo(String name, String info) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(name),
          content: Text(info),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
      ),
      body: Container(
        height: 254,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _characters.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _showCharacterInfo(
                    _characters[index]['name']!, _characters[index]['info']!);
              },
              child: Container(
                width: 200,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 5, 8, 13),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _characters[index]['image']!,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _characters[index]['name']!,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: NameList()));
}
