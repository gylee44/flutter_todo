class TodoModel {
  String title;
  bool isDone;

  TodoModel({
    required this.title,
    this.isDone = false,
  });

  /// JSON → TodoModel
  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      title: json['title'],
      isDone: json['isDone'] ?? false,
    );
  }

  /// TodoModel → JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'isDone': isDone,
    };
  }
}
