import 'package:flutter/material.dart';
import '../models/todo.dart';

class AddTodoPage extends StatelessWidget {
  AddTodoPage({super.key});

  final TextEditingController controller = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();

  void _submit(BuildContext context) {
    final content = controller.text.trim();
    if (content.isNotEmpty) {
      Navigator.pop(context, Todo(content: controller.text,
          description: descriptionController.text ,dueDate: DateTime.tryParse(dueDateController.text)));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('할 일 추가')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: '할 일 입력'),
              onSubmitted: (_) => _submit(context),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: '설명'),
            ),
            TextField(
              controller: dueDateController,
              decoration: InputDecoration(labelText: '마감일 (예: 2025-06-01)'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _submit(context),
              child: const Text('등록'),
            ),
          ],
        ),
      ),
    );
  }
}
