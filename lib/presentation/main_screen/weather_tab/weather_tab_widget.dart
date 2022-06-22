import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m10_test/data/weather_api.dart';
import 'package:m10_test/domain/bloc/main_screen/weather_screen/weather_cubit.dart';
import 'package:m10_test/presentation/common/error_dialog.dart';
import 'package:m10_test/presentation/common/loader.dart';
import 'package:m10_test/presentation/main_screen/weather_tab/widget/weather_info.dart';

class WeatherTabWidget extends StatelessWidget {
  const WeatherTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WeatherCubit(context.read<WeatherApi>())..fetchData(),
      child: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (ctx, state) {
          if (state is Error) {
            showDialog(
              context: context,
              builder: (_) => ErrorDialog(
                onTap: () {
                  ctx.read<WeatherCubit>().fetchData();
                },
              ),
            );
          }
        },
        builder: (_, state) {
          if (state is Weather) {
            return WeatherInfoWidget(
              weather: state.weather,
            );
          }
          return const Loader();
        },
      ),
    );
  }
}
