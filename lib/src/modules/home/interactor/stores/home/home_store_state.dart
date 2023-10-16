part of 'home_store.dart';

class HomeStoreState extends Equatable {
  final HomeState state;
  final UserEntity user;

  const HomeStoreState({
    this.state = const HomeInitialState(),
    this.user = const UserEntity.empty(),
  });

  HomeStoreState copyWith({HomeState? state, UserEntity? user}) {
    return HomeStoreState(
      state: state ?? this.state,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [
        state,
        user,
      ];
}
