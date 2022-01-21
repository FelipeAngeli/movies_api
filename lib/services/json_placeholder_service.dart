import 'package:movies_api/models/todo_model.dart';
import 'package:movies_api/services/http_client_interface.dart';

const url =
    'https://my-json-server.typicode.com/ericqueirozc/fteamtraineeapi/movies';

class JsonPlaceholderService {
  final IhttpClient client;

  JsonPlaceholderService(this.client);

  Future<List<TodoModel>> getTodos() async {
    final body = await client.get(url);
    return (body as List).map(TodoModel.fromJson).toList();
  }
}
