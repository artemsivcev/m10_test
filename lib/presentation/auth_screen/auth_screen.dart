import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m10_test/presentation/main_screen/main_screen.dart';

import '../../domain/bloc/auth_screen/auth_cubit.dart';
import '../common/loader.dart';
import 'login_screen/login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
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
