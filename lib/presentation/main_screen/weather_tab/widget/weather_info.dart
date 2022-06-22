import 'package:flutter/material.dart';
import 'package:m10_test/domain/models/weather_data.dart';
import 'package:m10_test/presentation/main_screen/weather_tab/widget/parameter_with_icon_row.dart';

class WeatherInfoWidget extends StatelessWidget {
  const WeatherInfoWidget({
    Key? key,
    required this.weather,
  }) : super(key: key);
  final WeatherData weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weather.weatherDesc.first.main,
        ),
        Text(
          weather.weatherDesc.first.description,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            weather.mainWeatherInfo.getTheTempFormatted(),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ParameterWithIconRow(
              icon: Icons.water_drop,
              text: weather.mainWeatherInfo.getHumidityFormatted(),
            ),
            ParameterWithIconRow(
              icon: Icons.thermostat,
              text: weather.mainWeatherInfo.getAirPressureFormatted(),
            ),
            ParameterWithIconRow(
              icon: Icons.signal_cellular_0_bar,
              text: weather.mainWeatherInfo.getMinTempFormatted(),
            ),
            ParameterWithIconRow(
              icon: Icons.signal_cellular_4_bar,
              text: weather.mainWeatherInfo.getMaxTempFormatted(),
            ),
          ],
        ),
      ],
    );
  }
}
