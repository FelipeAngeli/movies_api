import 'package:flutter_test/flutter_test.dart';
import 'package:movies_api/models/todo_model.dart';
import 'package:movies_api/services/local_client.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('Deve preencher, a lista, coretamente', () async {
    final filmes = await carregarMovies();
    expect(filmes, isA<List<TodoModel>>());
  });
}
