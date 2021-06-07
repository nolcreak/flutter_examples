import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HourListWidget extends StatelessWidget {
  final forecastDay;
  final DateFormat dateFormat;

  const HourListWidget({
    Key? key,
    required this.forecastDay,
    required this.dateFormat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: forecastDay.hour.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(
              'https:${forecastDay.hour[index].condition.icon.toString()}',
            ),
            title: Text(forecastDay.hour[index].condition.text.toString()),
            subtitle: Text(dateFormat
                .format(DateTime.parse(forecastDay.hour[index].time))
                .toString()),
            trailing: Text(
              forecastDay.hour[index].tempC.toStringAsFixed(0) + '°',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          );
        },
      ),
    );
  }
}
