import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m10_test/data/user_auth_repository_impl.dart';
import 'package:m10_test/domain/models/user_details.dart';
import 'package:m10_test/presentation/auth_screen/login_screen/login_screen.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

/// Login cubit for [LoginScreen]
/// It log user in app or return error
/// if user credentials was incorrect
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._userAuthApi) : super(const Initial());

  final UserAuthRepositoryImpl _userAuthApi;

  Future<void> login(String login, String password) async {
    emit(const Loading());
    await Future.delayed(const Duration(seconds: 2));
    UserDetails? user;
    if (await _userAuthApi.isUserExist(login)) {
      user = await _userAuthApi.login(login, password);
    }
    if (user == null) {
      emit(const Error());
    } else {
      emit(LoggedIn(user));
    }
  }
}
