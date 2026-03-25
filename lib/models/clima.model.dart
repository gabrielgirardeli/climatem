


import 'package:flutter/material.dart';

class ClimaModel {
  final String cityName;
  final double temperature;
  final double feelsLike;
  final double windSpeed;
  final String condition;
  final IconData icon;

  ClimaModel({
    required this.cityName,
    required this.temperature,
    required this.feelsLike,
    required this.windSpeed,
    required this.condition,
    required this.icon,
  });

}