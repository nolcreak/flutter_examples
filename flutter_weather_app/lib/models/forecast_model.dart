import 'dart:convert';

ForecastModel forecastModelFromJson(String str) =>
    ForecastModel.fromJson(json.decode(str));

String forecastModelToJson(ForecastModel data) => json.encode(data.toJson());

class ForecastModel {
  ForecastModel({
    this.location,
    this.current,
    this.forecast,
  });

  final Location? location;
  final Current? current;
  final Forecast? forecast;

  factory ForecastModel.fromJson(Map<String, dynamic> json) => ForecastModel(
        location: Location.fromJson(json['location']),
        current: Current.fromJson(json['current']),
        forecast: Forecast.fromJson(json['forecast']),
      );

  Map<String, dynamic> toJson() => {
        'location': location,
        'current': current,
        'forecast': forecast,
      };
}

class Current {
  Current({
    this.tempC,
    this.tempF,
    this.condition,
    this.feelslikeC,
    this.uv,
  });

  final double? tempC;
  final double? tempF;
  final Condition? condition;
  final double? feelslikeC;
  final double? uv;

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        tempC: json['temp_c'],
        tempF: json['temp_f'],
        condition: Condition.fromJson(json['condition']),
        feelslikeC: json['feelslike_c'],
        uv: json['uv'],
      );

  Map<String, dynamic> toJson() => {
        'temp_c': tempC,
        'temp_f': tempF,
        'condition': condition,
        'feelslike_c': feelslikeC,
        'uv': uv,
      };
}

class Condition {
  Condition({
    this.text,
    this.icon,
  });

  final String? text;
  final String? icon;

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        text: json['text'],
        icon: json['icon'],
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'icon': icon,
      };
}

class Forecast {
  Forecast({
    this.forecastday,
  });

  final List<Forecastday>? forecastday;

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
        forecastday: List<Forecastday>.from(
            json['forecastday'].map((x) => Forecastday.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'forecastday': List<dynamic>.from(forecastday!.map((x) => x.toJson())),
      };
}

class Forecastday {
  Forecastday({
    this.date,
    this.dateEpoch,
    this.day,
    this.astro,
    this.hour,
  });

  final DateTime? date;
  final int? dateEpoch;
  final Day? day;
  final Astro? astro;
  final List<Hour>? hour;

  factory Forecastday.fromJson(Map<String, dynamic> json) => Forecastday(
        date: DateTime.parse(json['date']),
        dateEpoch: json['date_epoch'],
        day: Day.fromJson(json['day']),
        astro: Astro.fromJson(json['astro']),
        hour: List<Hour>.from(json['hour'].map((x) => Hour.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'date': date!,
        'date_epoch': dateEpoch,
        'day': day,
        'astro': astro,
        'hour': List<dynamic>.from(hour!.map((x) => x.toJson())),
      };
}

class Astro {
  Astro({
    this.sunrise,
    this.sunset,
  });

  final String? sunrise;
  final String? sunset;

  factory Astro.fromJson(Map<String, dynamic> json) => Astro(
        sunrise: json['sunrise'],
        sunset: json['sunset'],
      );

  Map<String, dynamic> toJson() => {
        'sunrise': sunrise,
        'sunset': sunset,
      };
}

class Day {
  Day({
    this.maxtempC,
    this.mintempC,
    this.condition,
  });

  final double? maxtempC;
  final double? mintempC;
  final Condition? condition;

  factory Day.fromJson(Map<String, dynamic> json) => Day(
        maxtempC: json['maxtemp_c'].toDouble(),
        mintempC: json['mintemp_c'].toDouble(),
        condition: Condition.fromJson(json['condition']),
      );

  Map<String, dynamic> toJson() => {
        'maxtemp_c': maxtempC,
        'mintemp_c': mintempC,
        'condition': condition,
      };
}

class Hour {
  Hour({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.condition,
  });

  final int? timeEpoch;
  final String? time;
  final double? tempC;
  final double? tempF;
  final Condition? condition;

  factory Hour.fromJson(Map<String, dynamic> json) => Hour(
        timeEpoch: json['time_epoch'],
        time: json['time'],
        tempC: json['temp_c'].toDouble(),
        tempF: json['temp_f'].toDouble(),
        condition: Condition.fromJson(json['condition']),
      );

  Map<String, dynamic> toJson() => {
        'time_epoch': timeEpoch,
        'time': time,
        'temp_c': tempC,
        'temp_f': tempF,
        'condition': condition,
      };
}

class Location {
  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  final String? name;
  final String? region;
  final String? country;
  final double? lat;
  final double? lon;
  final String? tzId;
  final int? localtimeEpoch;
  final String? localtime;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json['name'],
        region: json['region'],
        country: json['country'],
        lat: json['lat'].toDouble(),
        lon: json['lon'].toDouble(),
        tzId: json['tz_id'],
        localtimeEpoch: json['localtime_epoch'],
        localtime: json['localtime'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'region': region,
        'country': country,
        'lat': lat,
        'lon': lon,
        'tz_id': tzId,
        'localtime_epoch': localtimeEpoch,
        'localtime': localtime,
      };
}
