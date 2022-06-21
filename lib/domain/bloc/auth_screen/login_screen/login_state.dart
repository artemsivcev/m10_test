part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;

  const factory LoginState.loading() = Loading;

  const factory LoginState.error() = Error;

  const factory LoginState.loggedIn(UserDetails user) = LoggedIn;
}
