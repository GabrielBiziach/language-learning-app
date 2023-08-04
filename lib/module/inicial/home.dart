import 'package:flutter/material.dart';

import '../lesson/lesson_detail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Learning App'),
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lessons[index].titulo),
            subtitle: Text(lessons[index].descricao),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LessonDetailScreen(lessons[index])),
              );
            },

          );
        },
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
