import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/todo_controller.dart';

class AddTodoPage extends GetView<TodoController> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Todo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: 'Todo'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (textController.text.trim().isNotEmpty) {
                  controller.addTodo(textController.text.trim());
                  Get.back();
                }
              },
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
