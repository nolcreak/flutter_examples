import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../../controllers/weather_detail_controller.dart';
import '../widgets/hours_list.dart';

class WeatherSummary extends StatelessWidget {
  final DateFormat dateFormat = DateFormat('dd.MM.yyyy, hh:mm');
  final WeatherDetailController controller;

  WeatherSummary({required this.controller});
  @override
  Widget build(BuildContext context) {
    final myController = controller.weatherData[0];
    final forecastDay = myController.forecast.forecastday[0];
    final location = myController.location;
    final current = myController.current;
    final astro = forecastDay.astro;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_pin,
            ),
            Text('${location.name} / ${location.region}'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https:${current.condition.icon}',
            ),
            Column(
              children: [
                Text(
                    '${current.tempC.toStringAsFixed(0)}C / ${current.tempF.toStringAsFixed(0)}F'),
                Text(
                  myController.current.condition.text,
                ),
              ],
            ),
          ],
        ),
        Text('Sunrise: ${astro.sunrise.toString()}'),
        Text('Sunset: ${astro.sunset.toString()}'),
        Divider(
          color: Colors.black,
        ),
        HourListWidget(
          dateFormat: dateFormat,
          forecastDay: forecastDay,
        )
      ],
    );
  }
}
