import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'data/api/network/services/weather_api_service.dart';
import 'data/api/storage/user_auth_storage.dart';
import 'data/user_auth_api.dart';
import 'data/weather_api.dart';
import 'domain/bloc/auth_screen/auth_cubit.dart';
import 'domain/constants/theme.dart';
import 'presentation/auth_screen/auth_screen.dart';

Future<void> main() async {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WeatherApi>(
          create: (context) => WeatherApi(WeatherApiService()),
        ),
        RepositoryProvider<UserAuthApi>(
          create: (context) => UserAuthApi(UserAuthStorage()..openBoxes()),
        ),
      ],
      child: BlocProvider(
          create: (context) =>
              AuthCubit(context.read<UserAuthApi>())..checkIsUserLoggedIn(),
          child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: AppTheme.mainTheme,
      home: const AuthScreen(),
    );
  }
}
