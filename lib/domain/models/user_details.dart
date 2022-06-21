import 'package:hive/hive.dart';

part 'user_details.g.dart';

/// Model class with user details info.
@HiveType(typeId: 1)
class UserDetails {
  @HiveField(0)
  String name;
  @HiveField(1)
  String login;
  @HiveField(2)
  String password;
  @HiveField(3)
  DateTime registrationDateTime;

  UserDetails({
    required this.name,
    required this.login,
    required this.password,
    DateTime? registrationDateTime,
  }) : registrationDateTime = registrationDateTime ?? DateTime.now();

  @override
  toString() => "name: $name \n "
      "login: $login \n"
      " password: $password \n "
      "registrationDateTime: $registrationDateTime \n ";
}
