import 'package:equatable/equatable.dart';

sealed class SplashState extends Equatable {
  const SplashState();
}

class InitialSplashState extends SplashState {
  const InitialSplashState();

  @override
  List<Object?> get props => [];
}

class SplashLoadingState extends SplashState {
  const SplashLoadingState();

  @override
  List<Object?> get props => [];
}

class SplashUserLoggedState extends SplashState {
  const SplashUserLoggedState();

  @override
  List<Object?> get props => [];
}

class SplashUserNotLoggedState extends SplashState {
  const SplashUserNotLoggedState();

  @override
  List<Object?> get props => [];
}
