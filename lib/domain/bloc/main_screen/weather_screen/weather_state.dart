part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = Initial;

  const factory WeatherState.loading() = Loading;

  const factory WeatherState.error() = Error;

  const factory WeatherState.weather(WeatherData weather) = Weather;
}
