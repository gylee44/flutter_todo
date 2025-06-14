import 'package:get/get.dart';
import '../bindings/todo_binding.dart';
import '../views/home_page.dart';
import '../views/add_todo_page.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: TodoBinding()),
    GetPage(name: Routes.ADD, page: () => AddTodoPage(), binding: TodoBinding()),
  ];
}