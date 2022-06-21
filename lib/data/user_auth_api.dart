import 'package:m10_test/data/api/storage/user_auth_storage.dart';
import 'package:m10_test/domain/models/user_details.dart';

import '../domain/repositories/user_auth_repository.dart';

/// UserAuthApi class extends [UserAuthRepository]
/// and communicate with [UserAuthStorage] storage service
class UserAuthApi extends UserAuthRepository {
  UserAuthApi(this._userAuthStorage);

  final UserAuthStorage _userAuthStorage;

  @override
  Future<UserDetails?> register(
      String name, String login, String password) async {
    var newUser = UserDetails(name: name, login: login, password: password);
    await _userAuthStorage.register(newUser);
    return newUser;
  }

  @override
  Future<bool> isUserExist(String login) async {
    return await _userAuthStorage.isUserExist(login);
  }

  @override
  Future<UserDetails?> login(String login, String password) async {
    return await _userAuthStorage.login(login, password);
  }

  @override
  Future<UserDetails?> getLoggedInUser() async {
    return await _userAuthStorage.getLoggedInUser();
  }

  @override
  Future<void> logout() async {
    await _userAuthStorage.logout();
  }
}
