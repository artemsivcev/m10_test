import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:m10_test/presentation/auth_screen/login_screen/login_screen.dart';

import '../../../../domain/bloc/auth_screen/registration_screen/registration_cubit.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
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
                controller: nameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enterName,
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
                    context.read<RegistrationCubit>().registerUser(
                        nameController.text,
                        loginController.text,
                        passwordController.text);
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
              context.read<RegistrationCubit>().registerUser(
                  nameController.text,
                  loginController.text,
                  passwordController.text);
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
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const LoginScreen(),
              ),
            );
          },
          child: Text(
            AppLocalizations.of(context)!.signIn,
          ),
        )
      ],
    );
  }
}
