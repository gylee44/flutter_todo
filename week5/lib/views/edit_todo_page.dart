import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/todo_controller.dart';
import '../models/todo_model.dart';

class EditTodoPage extends StatelessWidget {
  final TodoController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final Map args = Get.arguments;
    final int index = args['index'];
    final TodoModel todo = args['todo'];

    // 텍스트 필드에 기존 title 채우기
    final TextEditingController textController = TextEditingController(text: todo.title);

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Todo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: 'Edit your todo'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final newTitle = textController.text.trim();
                if (newTitle.isNotEmpty) {
                  controller.editTodo(index, newTitle); // Todo 수정
                  Get.back(); // 홈으로 돌아가기
                }
              },
              child: const Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}
