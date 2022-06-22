import 'package:collection/collection.dart';
import 'package:hive/hive.dart';
import 'package:m10_test/domain/constants/constants.dart';
import 'package:m10_test/domain/models/user_details.dart';

import 'base/safe_storage_base.dart';

/// UserAuthStorage need to save and get some user settings
class UserAuthStorage extends SafeStorageBase {
  late Box<UserDetails> allUserBoxes;
  late Box<UserDetails> currentUserBox;

  /// Function open boxes with all users and with current logged in user
  Future<void> openBoxes() async {
    await init();
    allUserBoxes = await openEncryptedBox(DBConstants.allUsersDBBox);
    currentUserBox = await openEncryptedBox(DBConstants.currentUserBox);
  }

  /// Function return true is user exist in DB
  Future<bool> isUserExist(String login) async {
    return getUserByLogin(login) != null;
  }

  /// Function added new user into DB
  Future<UserDetails> register(UserDetails newUser) async {
    await allUserBoxes.add(newUser);
    return newUser;
  }

  /// Function return list with all users
  Future<List<UserDetails>> getAllUser() async {
    return allUserBoxes.values.toList();
  }

  /// Function return user by login
  UserDetails? getUserByLogin(String login) {
    return allUserBoxes.values.firstWhereOrNull((user) => user.login == login);
  }

  /// Function trying to find user in DB with login and password
  /// If there is one, user saving to [currentUserBox] as logged in user
  /// return null if there is no user with this credentials
  Future<UserDetails?> login(String login, String password) async {
    var user = allUserBoxes.values.firstWhereOrNull(
        (user) => user.login == login && user.password == password);
    if (user != null) {
      currentUserBox.put(0, user);
      return user;
    } else {
      return null;
    }
  }

  /// Deleted user from [currentUserBox]
  Future<void> logout() async {
    currentUserBox.clear();
  }

  /// Return user from [currentUserBox] if there is one
  Future<UserDetails?> getLoggedInUser() async {
    return currentUserBox.get(0);
  }
}
