class TodoModel {
  final String name;
  final int age;

  TodoModel({required this.name, required this.age});

  static TodoModel fromJson(dynamic map) {
    return TodoModel(
      name: map['name'],
      age: map['age'],
    );
  }

  //testes

  static TodoModel stub() => TodoModel(
        name: "Auto da Compadecida",
        age: 1987,
      );
}
