import 'package:get/get.dart';
import '../models/todo_model.dart';
import '../services/todo_service.dart';

class TodoController extends GetxController {
  final RxList<TodoModel> todos = <TodoModel>[].obs;
  TodoService todoService;

  TodoController({required this.todoService });

  @override
  void onInit() {
    super.onInit();
    loadTodos();
  }

  void loadTodos() async {
    todos.value = await todoService.loadTodos();
  }

  void addTodo(String title) async {
    final newTodo = TodoModel(title: title);
    todos.value = await todoService.addTodo(newTodo);
  }

  void deleteTodo(int index) async {
    todos.value = await todoService.deleteTodo(index);
  }

  void editTodo(int index, String newTitle) async {
    todos.value = await todoService.editTodo(index, newTitle);
  }

  void toggleTodo(int index) async {
    todos.value = await todoService.toggleTodo(index);
  }
}