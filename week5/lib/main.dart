import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/todo_binding.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: TodoBinding(),
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}