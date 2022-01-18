import 'package:dio/dio.dart';
import 'package:movies_api/todo_model.dart';

class JsonPlaceholderService {
  final url =
      'https://my-json-server.typicode.com/ericqueirozc/fteamtraineeapi/movies';
  final dio = Dio();

  Future<List<TodoModel>> getTodos() async {
    final response = await dio.get(url);
    final body = response.data as List;
    final todos = body
        .map((map) => TodoModel(
              name: map['name'],
              age: map['age'],
            ))
        .toList();
    return todos;
  }
}
