import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'package:movies_api/models/todo_model.dart';

Future<String> _carregarMoviesJson() async {
  return await rootBundle.loadString('lib/repository/assets/movies.json');
}

Future<List<TodoModel>> carregarMovies() async {
  String movieJsonString = await _carregarMoviesJson();
  final respostaJson = json.decode(movieJsonString);
  final lista = <TodoModel>[];

  for (var movie in respostaJson) {
    final film = TodoModel.fromJson(movie);
    lista.add(film);
  }
  return lista;
}
