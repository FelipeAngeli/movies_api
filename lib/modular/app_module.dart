import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies_api/controllers/home_controller.dart';
import 'package:movies_api/services/dio_client.dart';
import 'package:movies_api/services/http_client.dart';
import 'package:movies_api/services/http_client_interface.dart';
import 'package:movies_api/services/json_placeholder_service.dart';
import 'package:movies_api/services/uno_client%20copy.dart';
import 'package:movies_api/views/home_page.dart';

// HomeController(JsonPlaceholderService(DioClient()));

class AppModule extends Module {
  @override
  // ligações
  List<Bind> get binds => [
        //   Bind.singleton<IhttpClient>((i) => DioClient()), //com dio
        //  Bind.singleton<IhttpClient>((i) => HttpPackageClient()), //Com http
        Bind.singleton<IhttpClient>((i) => UnoClient()), //Com Uno
        Bind.singleton((i) => JsonPlaceholderService(i())),
        Bind.singleton((i) => HomeController(i()))
      ];

  @override
  //rotas
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (_, __) => HomePage())];
}
