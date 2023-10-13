import 'base_state.dart';

class FailureState extends BaseState {
  final String message;

  const FailureState(this.message);

  @override
  List<Object?> get props => [message];
}