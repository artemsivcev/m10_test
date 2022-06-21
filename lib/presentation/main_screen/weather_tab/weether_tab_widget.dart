import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m10_test/domain/bloc/main_screen/weather_screen/weather_cubit.dart';
import 'package:m10_test/presentation/common/loader.dart';
import 'package:m10_test/presentation/main_screen/weather_tab/widget/weather_info.dart';

import '../../../data/weather_api.dart';
import '../../common/error_dialog.dart';

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
              builder: (BuildContext context) => ErrorDialog(
                onTap: () {
                  ctx.read<WeatherCubit>().fetchData();
                },
              ),
            );
          }
        },
        builder: (context, state) {
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
