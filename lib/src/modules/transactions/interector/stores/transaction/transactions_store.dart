import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../state/transactions_state.dart';

part 'transactions_store_state.dart';

class TransactionsStore extends ValueNotifier<TransactionsStoreState>{
  TransactionsStore(): super(const TransactionsStoreState());
}