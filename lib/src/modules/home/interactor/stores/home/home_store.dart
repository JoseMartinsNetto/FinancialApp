import 'package:equatable/equatable.dart';
import 'package:financial_app/src/modules/home/interactor/state/home_state.dart';
import 'package:flutter/material.dart';

part 'home_store_state.dart';

class HomeStore extends ValueNotifier<HomeStoreState> {
  HomeStore() : super(const HomeStoreState());
}
