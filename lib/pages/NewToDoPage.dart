import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertodo/controllers/TodoAddController.dart';

class NewToDoPage extends StatelessWidget {
  NewToDoPage({super.key});

  final TodoAddController addController = Get.put(TodoAddController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('New Schedule'),
        actions: [
          IconButton(icon: Icon(Icons.navigate_before), onPressed: () => addController.addSchedule(),),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Text('test page'),
            TextField(controller: addController.todoTextController),
          ],
        ),
      ),
    );
  }
}
