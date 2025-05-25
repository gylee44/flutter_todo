import 'package:flutter/material.dart';
import '../models/todo.dart';

class DeleteTodoPage extends StatelessWidget {  //삭제할 항목을 선택하는 페이지
  final List<Todo> todos;             //할일 목록
  final void Function(int) onDelete;  //인덱스로 삭제 항목 선택

  const DeleteTodoPage({
    Key? key,
    required this.todos,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('삭제할 할 일 선택')),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (_, index) => ListTile(
          title: Text(todos[index].content),
          subtitle: Text('${todos[index].description}\n'
              '${todos[index].dueDate?.toLocal().toString().split(' ')[0] ?? ''}'),
          trailing: IconButton( //각 할 일 오른쪽에 쓰레기통 버튼 표시
            icon: const Icon(Icons.delete),
            onPressed: () {
              onDelete(index);   // HomePage의 삭제 함수 호출
              Navigator.pop(context); // 삭제 후 돌아감
            },
          ),
        ),
      ),
    );
  }
}
