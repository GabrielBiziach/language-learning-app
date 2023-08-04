import 'package:flutter/material.dart';
import '../inicial/home.dart'; // Importe o arquivo main.dart para acessar a classe Lesson.

class LessonDetailScreen extends StatelessWidget {
  final Lesson lesson;

  LessonDetailScreen(this.lesson);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.titulo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(lesson.descricao),
            // Aqui você pode adicionar mais conteúdo relacionado à lição
          ],
        ),
      ),
    );
  }
}
