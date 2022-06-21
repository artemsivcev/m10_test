import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m10_test/presentation/main_screen/weather_tab/weether_tab_widget.dart';

import '../../../../data/weather_api.dart';
import '../../../constants/constants.dart';
import '../../../models/weather_data.dart';

part 'weather_cubit.freezed.dart';

part 'weather_state.dart';

/// Weather cubit for [WeatherTabWidget]
/// It fetch [WeatherData] from [WeatherApi]
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherApi) : super(const Loading());

  final WeatherApi _weatherApi;

  Future<void> fetchData() async {
    emit(const Loading());
    WeatherData? weather;
    weather = await _weatherApi.getDataByLatLon(
        NetworkConstants.defaultCityLat, NetworkConstants.defaultCityLon);
    if (weather != null) {
      emit(Weather(weather));
    } else {
      emit(const Error());
    }
  }
}
