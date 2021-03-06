import 'package:m10_test/domain/models/weather_data.dart';
import 'package:m10_test/domain/repositories/weather_repository.dart';

import 'api/network/services/weather_api_service.dart';

/// [WeatherRepositoryImpl] class extends [IWeatherRepository] and communicate with api service
class WeatherRepositoryImpl extends IWeatherRepository {
  WeatherRepositoryImpl(this._weatherApiService);

  final WeatherApiService _weatherApiService;

  @override
  Future<WeatherData?> getDataByLatLon(String lat, String lon) async {
    var response = await _weatherApiService.getDataByLatLon(lat: lat, lon: lon);

    if (response != null && response.data != null && response.data.isNotEmpty) {
      WeatherData weatherData = WeatherData.fromJson(response.data);

      return weatherData;
    } else {
      throw Exception('WeatherData is empty');
    }
  }
}
