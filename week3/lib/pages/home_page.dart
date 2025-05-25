import 'package:flutter/material.dart';
import 'package:week3/pages/delete_todo_page.dart';
import '../models/todo.dart';
import 'add_todo_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todo> todos = [];
  Color bgColor = Colors.white; //장난감 박스 색상 변수

  void _addTodo(Todo todo) {
    setState(() {
      todos.add(todo);
    });
  }


  Future<void> _navigateToAddTodoPage() async {
    final newTodo = await Navigator.push<Todo>(
      context,
      MaterialPageRoute(builder: (_) => AddTodoPage()),
    );
    if (newTodo != null) {
      _addTodo(newTodo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('할 일 목록')),
      backgroundColor: bgColor,
      body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              ElevatedButton( // 장난감 버튼
                onPressed: () {
                  setState(() {
                    bgColor = Color((DateTime.now().millisecondsSinceEpoch & 0xFFFFFF | 0xFF000000));
                  });
                },
                child: Text('배경 색 랜덤 버튼'),
              ),
              SizedBox(width:12),
              ],
            ),
              Expanded(
                  child: ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (_, index) => ListTile(
                        title: Text('${index +1}.${todos[index].content}'),
                        subtitle: Text('${todos[index].description}\n'
                            '${todos[index].dueDate?.toLocal().toString().split(' ')[0] ?? ''}'),
                      ),
                    ),
              ),
          ],
      ),
      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 정렬
        children: [
          // ➖ 삭제 페이지로 이동 버튼
          FloatingActionButton(
            heroTag: 'delete',    //플로팅 버튼끼리 구분하는 태그
            onPressed: () {
              // 삭제 페이지로 이동
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DeleteTodoPage(
                    todos: todos, //현재 할일 리스트 전달
                    // 삭제 콜백: 해당 인덱스의 할 일을 삭제
                    onDelete: (index) {
                      setState(() {
                        todos.removeAt(index);
                      });
                    },
                  ),
                ),
              );
            },
            child: const Icon(Icons.remove),
            tooltip: '할 일 삭제',
          ),
          const SizedBox(width: 16), // 버튼 사이 여백
          // ➕ 할 일 추가 버튼
          FloatingActionButton(
            heroTag: 'add', // 플로팅 버튼마다 고유 태그 필요
            onPressed: _navigateToAddTodoPage, // 할 일 추가 페이지로 이동
            child: const Icon(Icons.add),
            tooltip: '할 일 추가',
          ),
        ],
      ),
    );
  }
}
