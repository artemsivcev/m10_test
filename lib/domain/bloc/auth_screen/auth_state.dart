part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = Loading;

  const factory AuthState.loggedOut() = LoggedOut;

  const factory AuthState.loggedIn(UserDetails user) = LoggedIn;
}
