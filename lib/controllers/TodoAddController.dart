import 'package:flutter/material.dart';
import 'package:fluttertodo/controllers/TodoController.dart';
import 'package:fluttertodo/models/todo.dart';
import 'package:get/get.dart';

class TodoAddController extends GetxController{
  String? schedule;
  TodoController todoController = Get.find<TodoController>();

  // late TextEditingController todoTextController;
  TextEditingController todoTextController = TextEditingController();

  void addSchedule() {
    ToDo? tempTodo = new ToDo(title: todoTextController.text, id: todoController.todos.length + 1);
    // tempTodo?.title = ;
    todoController.todos.add(tempTodo!);
  }
}