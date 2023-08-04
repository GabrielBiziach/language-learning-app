import 'package:flutter/material.dart';

import '../../inicial/home.dart';
import 'lesson_detail.dart';

class LessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lições'),
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
