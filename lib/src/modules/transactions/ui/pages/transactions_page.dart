import 'package:financial_app/src/modules/transactions/interector/entities/transaction_category.dart';
import 'package:financial_app/src/modules/transactions/ui/widgets/transaction_expanse_card.dart';
import 'package:financial_app/src/shared/widgets/general_app_bar.dart';
import 'package:flutter/material.dart';

import '../../interector/entities/transaction.dart';
import '../../interector/stores/transaction/transactions_store.dart';
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
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyMedium = theme.textTheme.bodyMedium;

    return Scaffold(
      appBar: const GeneralAppBar(title: 'Transações'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TransactionTopCard(),
          const SizedBox(height: 20),
          Padding(
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
                const TransactionExpanseCard(
                  transaction: Transaction(
                    value: 500,
                    category:
                        TransactionCategory(color: 'C16A6A', name: 'Mercado'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
