import 'package:fluttertodo/models/todo.dart';

class TodoController {
  List<ToDo> todos = List.generate(3, (index) => ToDo(id: index, title: 'test'));
}