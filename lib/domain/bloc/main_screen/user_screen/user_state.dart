part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = Initial;

  const factory UserState.currentUser(UserDetails user) = CurrentUser;

  const factory UserState.loggedOut() = LoggedOut;
}
