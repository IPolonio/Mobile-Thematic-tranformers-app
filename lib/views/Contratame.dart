import 'package:flutter/material.dart';

class Contratame extends StatelessWidget {
  const Contratame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contrata un Dev'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 200,
                child: Image.asset('assets/images/Yo.jpg'),
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Isaac Alexander Polonio Lorenzo ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Hola soy Isaac el creador de esta app , si deseas poner tus ideas en vida '
              'Contactame',
              style: TextStyle(
                fontSize: 18,
              ),
            ),Text('20221934@itla.edu.do'),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Contratame(),
  ));
}
