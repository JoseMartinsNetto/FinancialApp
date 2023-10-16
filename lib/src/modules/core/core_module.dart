import 'package:financial_app/src/modules/core/http_client/http_client.dart';
import 'package:financial_app/src/modules/core/http_client/implementations/uno_factory.dart';
import 'package:financial_app/src/modules/core/http_client/implementations/uno_http_client_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:uno/uno.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addInstance<Uno>(UnoFactory()());
    i.add<HttpClient>(UnoHttpClientImpl.new);
    // i.add()

    super.exportedBinds(i);
  }
}
