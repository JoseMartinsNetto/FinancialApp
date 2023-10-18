import 'package:financial_app/src/modules/core/core_module.dart';
import 'package:financial_app/src/modules/transactions/interector/repositories/transaction_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/transaction_repository_impl.dart';
import 'interector/stores/transactions/transactions_store.dart';
import 'ui/pages/transactions_page.dart';

class TransactionsModule extends Module {
  static String routeName = '/transactions';

  @override
  void routes(RouteManager r) {
    r.child('/', child: (ctx) => TransactionsPage(ctx.read()));
    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.add(TransactionsStore.new);
    i.add<TransactionRepository>(TransactionRepositoryImpl.new);

    super.binds(i);
  }

  @override
  List<Module> get imports => [CoreModule()];
}
