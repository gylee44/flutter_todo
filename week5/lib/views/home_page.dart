import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/todo_controller.dart';
import '../routes/app_pages.dart';

class HomePage extends GetView<TodoController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo App')),
      body: Obx(() => ListView.builder(
        itemCount: controller.todos.length,
        itemBuilder: (context, index) {
          final todo = controller.todos[index];


          return  GestureDetector(
              onLongPress: () { //이부분 롱클릭 시 편집 이동
            Get.toNamed(
              Routes.EDIT,
              arguments: {
                'index': index,
                'todo': todo,
              },
            );
          },
          child: ListTile(
            title: Text(
              todo.title,
              style: TextStyle(
                decoration:
                todo.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => controller.deleteTodo(index),
            ),
            onTap: () => controller.toggleTodo(index),
          ),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD),
        child: const Icon(Icons.add),
      ),
    );
  }
}