import 'package:flutter_test/flutter_test.dart';
import 'package:movies_api/json_placeholder_service.dart';

void main() async {
  final service = JsonPlaceholderService();
  final todos = await service.getTodos();
  print(todos[0].name);
}
