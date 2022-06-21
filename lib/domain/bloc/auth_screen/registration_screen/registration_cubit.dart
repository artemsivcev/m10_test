import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m10_test/domain/models/user_details.dart';
import 'package:m10_test/presentation/auth_screen/registration_screen/registration_screen.dart';

import '../../../../data/user_auth_api.dart';

part 'registration_cubit.freezed.dart';

part 'registration_state.dart';

/// Registration cubit for [RegistrationScreen]
/// It registering user and return error
/// if there is already is user with this credentials
class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(this._userAuthApi) : super(const Initial());

  final UserAuthApi _userAuthApi;

  Future<void> registerUser(String name, String login, String password) async {
    emit(const Loading());
    await Future.delayed(const Duration(seconds: 2));
    if (await _userAuthApi.isUserExist(login)) {
      emit(const Error());
    } else {
      await _userAuthApi.register(name, login, password);
      var user = await _userAuthApi.login(login, password);
      emit(Registered(user!));
    }
  }
}
