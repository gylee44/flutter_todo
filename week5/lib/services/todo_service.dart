import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/todo_model.dart';

class TodoService {
  static const String _storageKey = 'todo_list';

  Future<List<TodoModel>> loadTodos() async {
    final prefs = await SharedPreferences.getInstance();
    final String? jsonString = prefs.getString(_storageKey);
    if (jsonString == null) return [];
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((item) => TodoModel.fromJson(item)).toList();
  }

  Future<void> saveTodos(List<TodoModel> todos) async {
    final prefs = await SharedPreferences.getInstance();
    final String jsonString =
    json.encode(todos.map((t) => t.toJson()).toList());
    await prefs.setString(_storageKey, jsonString);
  }

  Future<List<TodoModel>> addTodo(TodoModel todo) async {
    final todos = await loadTodos();
    todos.add(todo);
    await saveTodos(todos);
    return todos;
  }

  Future<List<TodoModel>> deleteTodo(int index) async {
    final todos = await loadTodos();
    if (index >= 0 && index < todos.length) {
      todos.removeAt(index);
      await saveTodos(todos);
    }
    return todos;
  }

  Future<List<TodoModel>> editTodo(int index, String newTitle) async {
    final todos = await loadTodos();
    if (index >= 0 && index < todos.length) {
      todos[index].title = newTitle;
      await saveTodos(todos);
    }
    return todos;
  }

  Future<List<TodoModel>> toggleTodo(int index) async {
    final todos = await loadTodos();
    if (index >= 0 && index < todos.length) {
      todos[index].isDone = !todos[index].isDone;
      await saveTodos(todos);
    }
    return todos;
  }
}
