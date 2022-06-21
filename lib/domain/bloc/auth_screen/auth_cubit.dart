import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m10_test/presentation/auth_screen/auth_screen.dart';

import '../../../data/user_auth_api.dart';
import '../../models/user_details.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

/// Auth cubit for [AuthScreen]
/// It checking is user logged in and navigate us to right screen
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._userAuthApi) : super(const Loading());

  final UserAuthApi _userAuthApi;

  Future<void> checkIsUserLoggedIn() async {
    emit(const Loading());
    await Future.delayed(const Duration(seconds: 2));
    var loggedInUser = await _userAuthApi.getLoggedInUser();
    if (loggedInUser != null) {
      emit(LoggedIn(loggedInUser));
    } else {
      emit(const LoggedOut());
    }
  }
}
