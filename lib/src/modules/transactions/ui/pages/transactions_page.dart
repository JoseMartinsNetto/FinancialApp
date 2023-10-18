import 'package:financial_app/src/modules/transactions/ui/widgets/transaction_expanse_card.dart';
import 'package:financial_app/src/shared/widgets/general_app_bar.dart';
import 'package:flutter/material.dart';

import '../../interector/stores/transactions/transactions_store.dart';
import '../widgets/transaction_top_card.dart';

class TransactionsPage extends StatefulWidget {
  final TransactionsStore _store;

  const TransactionsPage(this._store, {super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsState();
}

class _TransactionsState extends State<TransactionsPage> {
  TransactionsStore get store => widget._store;

  @override
  void initState() {
    store.addListener(() {});

    store.fetch();
    super.initState();
  }

  @override
  void dispose() {
    store.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return Scaffold(
      appBar: const GeneralAppBar(title: 'Transações'),
      body: ValueListenableBuilder(
          valueListenable: store,
          builder: (context, state, _) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TransactionTopCard(totalValue: state.totalTransactionsValue),
                const SizedBox(height: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Monitore seus gastos',
                          style: bodyMedium?.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            childAspectRatio: 1.7,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            children: state.categoriesGrouped
                                .map((item) =>
                                    TransactionExpanseCard(category: item))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
