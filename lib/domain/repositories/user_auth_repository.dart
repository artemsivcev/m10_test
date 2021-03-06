import 'package:m10_test/domain/models/user_details.dart';

/// [IUserAuthRepository] abstract class to communicate with storage|network in data layer
abstract class IUserAuthRepository {
  Future<UserDetails?> register(String name, String login, String password);

  Future<bool> isUserExist(String login);

  Future<UserDetails?> login(String login, String password);

  Future<UserDetails?> getLoggedInUser();

  Future<void> logout();
}
