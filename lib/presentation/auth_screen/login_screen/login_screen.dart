import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:m10_test/presentation/auth_screen/login_screen/widgets/login_form.dart';

import '../../../data/user_auth_api.dart';
import '../../../domain/bloc/auth_screen/login_screen/login_cubit.dart';
import '../../common/error_dialog.dart';
import '../../common/loader.dart';
import '../../main_screen/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(context.read<UserAuthApi>()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.loginPage,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoggedIn) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const MainScreen(),
                  ),
                );
              } else if (state is Error) {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => const ErrorDialog());
              }
            },
            builder: (context, state) {
              if (state is Loading) {
                return const Loader();
              }
              return const LoginForm();
            },
          ),
        ),
      ),
    );
  }
}
