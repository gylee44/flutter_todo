import 'package:get/get.dart';
import 'package:week5/services/todo_service.dart';
import '../controllers/todo_controller.dart';

class TodoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodoService());
    Get.lazyPut(() => TodoController(
      todoService: Get.find<TodoService>(),
    ));
  }
}
