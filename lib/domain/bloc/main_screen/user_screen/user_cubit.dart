import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m10_test/data/user_auth_repository_impl.dart';
import 'package:m10_test/domain/models/user_details.dart';
import 'package:m10_test/presentation/main_screen/user_tab/user_tab_widget.dart';

part 'user_cubit.freezed.dart';

part 'user_state.dart';

/// User cubit for [UserTabWidget]
/// It fetch current logged in [UserDetails] from [UserAuthRepositoryImpl] storage
class UserCubit extends Cubit<UserState> {
  UserCubit(this._userAuthApi) : super(const Initial());

  final UserAuthRepositoryImpl _userAuthApi;

  Future<void> getCurrentUser() async {
    var user = await _userAuthApi.getLoggedInUser();
    if (user != null) {
      emit(CurrentUser(user));
    }
  }

  Future<void> logout() async {
    await _userAuthApi.logout();
    emit(const LoggedOut());
  }
}
