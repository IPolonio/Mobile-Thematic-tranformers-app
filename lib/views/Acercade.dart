import 'package:flutter/material.dart';

class Acercade extends StatelessWidget {
  const Acercade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de Transformers'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transformers: Age of Extinction',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Transformers: Age of Extinction es una película de acción y ciencia ficción '
              'dirigida por Michael Bay. Estrenada en 2014, es la cuarta entrega de la serie '
              'de películas de Transformers. La película está protagonizada por Mark Wahlberg, '
              'Nicola Peltz y Jack Reynor. La trama sigue a un mecánico y a su hija que descubren '
              'a Optimus Prime, lo que los lleva a ellos y a sus aliados a ser blanco del gobierno '
              'y de una nueva amenaza alienígena.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'La película recibió críticas mixtas, con elogios por sus efectos visuales y '
              'secuencias de acción, pero críticas por su guion y duración. A pesar de esto, '
              'fue un éxito comercial, recaudando más de 1.100 millones de dólares en todo el mundo.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Acercade(),
  ));
}
