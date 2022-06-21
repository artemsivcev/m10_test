import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:m10_test/domain/models/user_details.dart';

import '../../../../domain/bloc/main_screen/user_screen/user_cubit.dart';
import '../../../auth_screen/login_screen/login_screen.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key, required this.user}) : super(key: key);
  final UserDetails user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${AppLocalizations.of(context)!.username}: ${user.name}"),
        Text("${AppLocalizations.of(context)!.login}: ${user.login}"),
        Text("${AppLocalizations.of(context)!.registerDate}: "
            "${user.registrationDateTime}"),
        TextButton(
          onPressed: () async {
            context.read<UserCubit>().logout();
            Navigator.of(context).pushReplacement(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const LoginScreen(),
              ),
            );
          },
          child: Text(
            AppLocalizations.of(context)!.logout,
          ),
        ),
      ],
    );
  }
}
