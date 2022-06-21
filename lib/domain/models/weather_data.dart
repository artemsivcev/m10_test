import 'package:json_annotation/json_annotation.dart';

part "weather_data.g.dart";

/// Main weather info model
@JsonSerializable()
class WeatherData {
  @JsonKey(name: "weather")
  final List<WeatherDesc> weatherDesc;

  @JsonKey(name: "main")
  final MainWeatherInfo mainWeatherInfo;

  WeatherData({
    required this.weatherDesc,
    required this.mainWeatherInfo,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDataToJson(this);
}

@JsonSerializable()
class WeatherDesc {
  @JsonKey(name: "main")
  final String main;

  @JsonKey(name: "description")
  final String description;

  WeatherDesc({
    required this.main,
    required this.description,
  });

  factory WeatherDesc.fromJson(Map<String, dynamic> json) =>
      _$WeatherDescFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDescToJson(this);
}

@JsonSerializable()
class MainWeatherInfo {
  @JsonKey(name: "temp")
  final double temp;

  @JsonKey(name: "feels_like")
  final double feelsLike;

  @JsonKey(name: "temp_min")
  final double tempMin;

  @JsonKey(name: "temp_max")
  final double tempMax;

  @JsonKey(name: "pressure")
  final double pressure;

  @JsonKey(name: "humidity")
  final double humidity;

  MainWeatherInfo({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory MainWeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MainWeatherInfoToJson(this);

  String getMinTempFormatted() {
    return convertTemp(tempMin);
  }

  String getMaxTempFormatted() {
    return convertTemp(tempMax);
  }

  String getTheTempFormatted() {
    return convertTemp(temp);
  }

  String convertTemp(double temp) {
    return "${temp.toStringAsFixed(2)} C";
  }

  String getHumidityFormatted() {
    return "${humidity.roundToDouble()}%";
  }

  String getAirPressureFormatted() {
    return "${pressure.roundToDouble()} mbar";
  }
}
