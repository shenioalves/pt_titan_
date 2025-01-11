import 'package:flutter/material.dart';

import '../components/taks.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.blue,
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(microseconds: 800),
        child: ListView(
          children: const [

            Taks(
                'Aprender Flutter',
                'assets/images/flutter.png',
                1), Taks(
                'Aprender Ler',
                'assets/images/ler.jpg',
                2),
            Taks(
                'Aprender Flutter',
                'assets/images/flutter.png',
                2),
            Taks(
                'Aprender Flutter',
                'assets/images/flutter.png',
                2),

            Taks(
                'Aprender Jogar',
                'assets/images/jogar.jpg',
                4),
            Taks(
                'Meditar',
                'assets/images/meditar.jpeg',
                3),
            Taks(
                'Aprender Jogar',
                'assets/images/jogar.jpg',
                4),
            Taks(
                'Meditar',
                'assets/images/meditar.jpeg',
                3),
            Taks(
                'Aprender Jogar',
                'assets/images/jogar.jpg',
                4),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child:const Icon(
          Icons.remove_red_eye,
          color: Colors.white,
        ),
      ),
    );
  }
}


