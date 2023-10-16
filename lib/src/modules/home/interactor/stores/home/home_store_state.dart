part of 'home_store.dart';

class HomeStoreState extends Equatable {
  final HomeState state;

  const HomeStoreState({
    this.state = const HomeInitialState(),
  });

  @override
  List<Object?> get props => [];
}
