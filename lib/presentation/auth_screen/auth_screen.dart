import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m10_test/domain/bloc/auth_screen/auth_cubit.dart';
import 'package:m10_test/presentation/common/loader.dart';
import 'package:m10_test/presentation/main_screen/main_screen.dart';

import 'login_screen/login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (_, state) {
        return state.when(loading: () {
          return const Loader();
        }, loggedOut: () {
          return const LoginScreen();
        }, loggedIn: (user) {
          return const MainScreen();
        });
      },
    );
  }
}
