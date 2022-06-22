import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:m10_test/data/user_auth_repository_impl.dart';
import 'package:m10_test/domain/bloc/auth_screen/registration_screen/registration_cubit.dart';
import 'package:m10_test/presentation/auth_screen/registration_screen/widgets/registration_form.dart';
import 'package:m10_test/presentation/common/error_dialog.dart';
import 'package:m10_test/presentation/common/loader.dart';
import 'package:m10_test/presentation/main_screen/main_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RegistrationCubit(context.read<UserAuthRepositoryImpl>()),
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
                  MaterialPageRoute(
                    builder: (_) => const MainScreen(),
                  ),
                );
              } else if (state is Error) {
                showDialog(
                  context: context,
                  builder: (_) => ErrorDialog(
                    desc: AppLocalizations.of(context)!.errorAlreadyExist,
                  ),
                );
              }
            },
            builder: (_, state) {
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
