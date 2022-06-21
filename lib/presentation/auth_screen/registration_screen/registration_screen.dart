import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:m10_test/presentation/auth_screen/registration_screen/widgets/registration_form.dart';
import 'package:m10_test/presentation/common/error_dialog.dart';
import 'package:m10_test/presentation/main_screen/main_screen.dart';

import '../../../data/user_auth_api.dart';
import '../../../domain/bloc/auth_screen/registration_screen/registration_cubit.dart';
import '../../common/loader.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationCubit(context.read<UserAuthApi>()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.regPage,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<RegistrationCubit, RegistrationState>(
            listener: (context, state) {
              if (state is Registered) {
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
              return const RegistrationForm();
            },
          ),
        ),
      ),
    );
  }
}