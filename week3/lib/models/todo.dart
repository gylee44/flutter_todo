class Todo {
  final String content;
  final String description; //설명 추가
  final DateTime? dueDate;  //마감일 추가

  Todo({
    required this.content,
    this.description = '',
    this.dueDate,
  });
}
