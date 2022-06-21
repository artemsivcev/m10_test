import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:m10_test/domain/bloc/main_screen/main_cubit.dart';
import 'package:m10_test/domain/constants/colours.dart';
import 'package:m10_test/presentation/main_screen/user_tab/user_tab_widget.dart';
import 'package:m10_test/presentation/main_screen/weather_tab/weether_tab_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  static const List<Widget> _widgetList = [
    WeatherTabWidget(),
    UserTabWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return state.when(selectPage: (page) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  AppLocalizations.of(context)!.mainPage,
                ),
                centerTitle: true,
              ),
              body: Center(
                child: _widgetList.elementAt(page),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.water_drop,
                    ),
                    label: AppLocalizations.of(context)!.weather,
                  ),
                  BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.supervised_user_circle,
                    ),
                    label: AppLocalizations.of(context)!.user,
                  ),
                ],
                currentIndex: state.page,
                selectedItemColor: AppColors.primary,
                onTap: (index) {
                  context.read<MainCubit>().selectPage(index);
                },
              ),
            );
          });
        },
      ),
    );
  }
}
