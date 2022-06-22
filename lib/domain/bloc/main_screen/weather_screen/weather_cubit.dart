import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m10_test/data/weather_repository_impl.dart';
import 'package:m10_test/domain/constants/constants.dart';
import 'package:m10_test/domain/models/weather_data.dart';
import 'package:m10_test/presentation/main_screen/weather_tab/weather_tab_widget.dart';

part 'weather_cubit.freezed.dart';

part 'weather_state.dart';

/// Weather cubit for [WeatherTabWidget]
/// It fetch [WeatherData] from [WeatherRepositoryImpl]
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._weatherApi) : super(const Loading());

  final WeatherRepositoryImpl _weatherApi;

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
