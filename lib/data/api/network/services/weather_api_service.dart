import 'package:dio/dio.dart';

import '../../../../domain/constants/constants.dart';
import 'base/api_service_base.dart';

/// The class reliable for backend requests.
class WeatherApiService extends ApiServiceBase {
  Future<Response?> getDataByLatLon({
    required String lat,
    required String lon,
  }) async {
    var queryParameters = {
      "lat": lat,
      "lon": lon,
      "appid": NetworkConstants.weatherApiKey,
    };
    var response =
        await dio.get('/data/2.5/weather', queryParameters: queryParameters);

    return response;
  }
}
