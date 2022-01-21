import 'package:flutter/cupertino.dart';
import 'package:movies_api/models/todo_model.dart';
import 'package:movies_api/services/json_placeholder_service.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceholderService _service;

  HomeController(
    this._service,
  );
  var todos = <TodoModel>[];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners(); //notificação
  }
}
