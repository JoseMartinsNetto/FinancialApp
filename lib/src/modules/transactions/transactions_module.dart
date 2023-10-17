import 'package:flutter_modular/flutter_modular.dart';

import 'interector/stores/transaction/transactions_store.dart';
import 'ui/pages/transactions_page.dart';

class TransactionsModule extends Module{
  static String routeName = '/transactions';

  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => TransactionsPage(ctx.read()));
    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.add(TransactionsStore.new);

    super.binds(i);
  }
}