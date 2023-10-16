import 'package:financial_app/src/modules/core/state/base_state.dart';

sealed class HomeState extends BaseState {
  const HomeState();
}

class HomeInitialState extends HomeState {
  const HomeInitialState();

  @override
  List<Object?> get props => [];
}
