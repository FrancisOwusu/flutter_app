import 'package:flutter/material.dart';
import 'package:itestapp/src/features/todos/domain/todo.dart';

class TodoDetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const TodoDetailScreen({super.key, required this.todo});

  // Declare a field that holds the Todo.
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }
}
