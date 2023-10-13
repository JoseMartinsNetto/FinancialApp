part of 'splash_store.dart';

class SplashStoreState extends Equatable {
  final SplashState state;

  const SplashStoreState({
    this.state = const InitialSplashState(),
  });

  SplashStoreState copyWith({
    SplashState? state,
  }) {
    return SplashStoreState(
      state: state ?? this.state,
    );
  }

  @override
  List<Object?> get props => [state];
}
