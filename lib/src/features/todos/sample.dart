import 'package:itestapp/src/features/todos/domain/todo.dart';

// ignore: non_constant_identifier_names
class SampleTodo {
  static final sampleTodos = List.generate(
      20,
      (i) => Todo(
            'Todo $i',
            'A description of what needs to be done for Todo $i',
          ));
}
