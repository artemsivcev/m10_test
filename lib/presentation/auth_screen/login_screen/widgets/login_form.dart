import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:m10_test/domain/bloc/auth_screen/login_screen/login_cubit.dart';
import 'package:m10_test/presentation/auth_screen/registration_screen/registration_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: loginController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enterLogin,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.emptyFieldError;
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) {
                  if (_formKey.currentState!.validate()) {
                    context
                        .read<LoginCubit>()
                        .login(loginController.text, passwordController.text);
                  }
                },
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enterPassword,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.emptyFieldError;
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        OutlinedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              context
                  .read<LoginCubit>()
                  .login(loginController.text, passwordController.text);
            }
          },
          child: Text(
            AppLocalizations.of(context)!.submit,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const RegistrationScreen(),
              ),
            );
          },
          child: Text(
            AppLocalizations.of(context)!.signUp,
          ),
        )
      ],
    );
  }
}
