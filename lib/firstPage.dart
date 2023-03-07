import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertodo/controllers/TodoController.dart';
import 'package:fluttertodo/models/todo.dart';

class FirstPage extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child:
              // Obx(() =>

                  ListView.builder(
                itemCount: todoController.todos.length,
                itemBuilder: (context, index) {
                  ToDo todo = todoController.todos[index];
                  return ListTile(
                    title: Text(todo.title!),
                    // trailing: IconButton(
                    //   icon: Icon(Icons.delete),
                    //   onPressed: () => todoController.remove(todo.id),
                    // ),
                  );
                },
              )),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => Get.toNamed('/add-todo'),
                child: Text('Add Todo'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}