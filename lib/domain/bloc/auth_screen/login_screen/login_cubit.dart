import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m10_test/presentation/auth_screen/login_screen/login_screen.dart';

import '../../../../data/user_auth_api.dart';
import '../../../models/user_details.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

/// Login cubit for [LoginScreen]
/// It log user in app or return error
/// if user credentials was incorrect
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._userAuthApi) : super(const Initial());

  final UserAuthApi _userAuthApi;

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
