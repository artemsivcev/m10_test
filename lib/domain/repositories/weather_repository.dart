import '../models/weather_data.dart';

/// [WeatherRepository] abstract class to communicate with network api in data layer
abstract class WeatherRepository {
  Future<WeatherData?> getDataByLatLon(String lat, String lon);
}
