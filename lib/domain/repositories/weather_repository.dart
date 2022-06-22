import 'package:m10_test/domain/models/weather_data.dart';

/// [IWeatherRepository] abstract class to communicate with network api in data layer
abstract class IWeatherRepository {
  Future<WeatherData?> getDataByLatLon(String lat, String lon);
}
