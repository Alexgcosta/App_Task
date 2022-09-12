import 'package:flutter/material.dart';
import 'package:tarefas_flutter/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);


  @override
  State<InitialScreen> createState() => _InitialScreenState();
}
int pontos = 10;

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  int nivel = 0;
  int progresso = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  nivel = 0;
                  progresso = 0;
                });
              },
              icon: const Icon(Icons.replay)),
        ],
        title: const Text('Tarefas'),
        centerTitle: true,
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(microseconds: 800),
        child: Container(
          color: Colors.white10,
          child: ListView(
          children: [
            Tasks('Aprender Flutter', 'assets/images/flutter.jpg',progresso, nivel,Colors.white),
            Tasks('Andar de Bike', 'assets/images/bike.webp',progresso,nivel,Colors.white),
            Tasks('Meditar', 'assets/images/meditar.jpeg',progresso,nivel,Colors.white),
            Tasks('Jogar', 'assets/images/game.png', progresso,nivel,Colors.white),
            Tasks('Lógica de Programação', 'assets/images/logica.png',progresso,nivel,Colors.blue),
            Tasks('Algoritimos', 'assets/images/algoritimos.webp', progresso,nivel,Colors.white),
            Tasks('HTML', 'assets/images/html.webp', progresso,nivel,Colors.white),
            Tasks('JavaScript', 'assets/images/javascript.webp', progresso,nivel,Colors.white),
            Tasks('CSS', 'assets/images/css-128.webp', progresso,nivel,Colors.white),
            Tasks('API REST', 'assets/images/api.webp', progresso,nivel,Colors.white),
            Tasks('SQL', 'assets/images/sql.webp', progresso,nivel,Colors.white),
            Tasks('Aprender Inglês', 'assets/images/usa.webp', progresso,nivel,Colors.white),
            const SizedBox(height: 100,),
          ],
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.pink[100],
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
