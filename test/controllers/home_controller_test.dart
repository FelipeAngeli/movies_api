import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies_api/controllers/home_controller.dart';
import 'package:movies_api/models/todo_model.dart';
import 'package:movies_api/services/json_placeholder_service.dart';

class JsonPlaceholderServiceMock extends Mock
    implements JsonPlaceholderService {}

void main() {
  test('Deve preencher, a lista, coretamente', () async {
    final service = JsonPlaceholderServiceMock();
    when(() => service.getTodos()).thenAnswer((_) async => [TodoModel.stub()]);
    final controller = HomeController(service);
    await controller.fetchAllTodos();
    expect(controller.todos.length, 1);
  });
}
