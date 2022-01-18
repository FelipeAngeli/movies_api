import 'dart:convert';
import 'package:dio/native_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movies_api/services/http_client_interface.dart';
import 'package:movies_api/services/json_placeholder_service.dart';

class DioMock extends Mock implements DioForNative {}

class IhttpClientMock extends Mock implements IhttpClient {}

void main() {
  test('deve retornar, todos os todos ', () async {
    final client = IhttpClientMock();
    when(() => client.get(url))
        .thenAnswer((_) async => jsonDecode(jsonResponse));
    final service = JsonPlaceholderService(client);
    final todos = await service.getTodos();
    expect(todos[0].name, 'Auto da Compadecida');
  });
}

const jsonResponse =
    r'''[
  {
    "name": "Auto da Compadecida",
    "age": 1987
  },
  {
    "name": "Homem aranha 3",
    "age": 2021
  },
  {
    "name": "Vingadores Ultimato",
    "age": 2019
  },
  {
    "name": "Shrek 3",
    "age": 2007
  }
]''';
