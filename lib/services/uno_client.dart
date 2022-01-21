import 'package:uno/uno.dart';

import 'http_client_interface.dart';

class UnoClient implements IhttpClient {
  final uno = Uno();
  @override
  Future<dynamic> get(String url) async {
    final response = await uno.get(url);
    return response.data;
  }
}
