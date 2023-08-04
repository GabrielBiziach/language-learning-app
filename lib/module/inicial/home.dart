import 'package:flutter/material.dart';

import '../lesson/pages/lesson_detail.dart';
import '../lesson/pages/lesson_list.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Learning App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Nome do Usuário'),
              accountEmail: Text('email@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('U', style: TextStyle(fontSize: 40)),
              ),
            ),
            ListTile(
              title: Text('Lições'),
              onTap: () {
                Navigator.pop(context); // Fecha o Drawer
                // Navegue para a tela de detalhes da Lesson
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LessonsScreen()),
                );
              },
            ),
            // ListTile(
            //   title: Text('Conversação'),
            //   onTap: () {
            //     Navigator.pop(context); // Fecha o Drawer
            //     // Navegue para a tela de Conversação
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => ConversationScreen()), // Substitua pelo nome da tela de Conversação
            //     );
            //   },
            // ),
          ],
        ),
      ),

      body: Center(
        child: Text('Welcome to the Language Learning App!'),
      ),
    );
  }
}


class Lesson {
  final String titulo;
  final String descricao;

  Lesson(this.titulo, this.descricao);
}

List<Lesson> lessons = [
  Lesson('Introdução às Saudações',
      'Aprenda a cumprimentar pessoas em diferentes idiomas.'),
  Lesson('Vocabulário Essencial',
      'Aprenda palavras-chave para situações cotidianas.'),
// Adicione mais lições aqui
];
