import '../models/user_details.dart';

/// [UserAuthRepository] abstract class to communicate with storage|network in data layer
abstract class UserAuthRepository {
  Future<UserDetails?> register(String name, String login, String password);

  Future<bool> isUserExist(String login);

  Future<UserDetails?> login(String login, String password);

  Future<UserDetails?> getLoggedInUser();

  Future<void> logout();
}
