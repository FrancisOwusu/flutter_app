import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itestapp/src/features/todos/domain/todo.dart';
import 'package:itestapp/src/features/todos/presentation/todo_details.dart';
import 'package:itestapp/src/routing/app_router.dart';

class TodosScreen extends StatelessWidget {
  // Requiring the list of todos.
  const TodosScreen({super.key, required this.todos});

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            // onTap: () => context.goNamed(AppRoute.dataScreen.name, params:),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TodoDetailScreen(todo: todos[index]))),
          );
        },
      ),
    );
  }
}
