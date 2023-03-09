import 'package:fluttertodo/models/todo.dart';
import 'package:get/get.dart';

class TodoController extends GetxController{
  List<ToDo> todos = List.generate(3, (index) => ToDo(id: index, title: 'test')).obs;

  remove(int? id) {
    this.todos.removeAt(id!);
  }
}