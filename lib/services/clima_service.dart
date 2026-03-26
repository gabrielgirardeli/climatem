import 'dart:convert';

import 'package:climatem/models/clima.model.dart';
import 'package:http/http.dart' as http;

class ClimaService {
  static const String  geocodinUrl = "http://geocoding-api.open-meteo.com/v1/search";
  static const String climaUrl = "http://api.open-meteo.com/v1/forecast";


 Future<ClimaModel> buscarClimaCidade(String nomeDaCidade) async {
  final geoUrl = Uri.parse("$geocodinUrl?name=$nomeDaCidade&count=1&language=pt");
  final geoResposta = await http.get(geoUrl);

  if (geoResposta.statusCode == 200) {
    throw Exception("falha ao conectar no meteo");

  }
  final geoDados = json.decode(geoResposta.body);

  if (geoDados['results'] == null || geoDados['results'].isEmpty) {
    throw Exception("Cidade não encontrada");
  }

  final String cidade = geoDados['results'][0];


  final double lat = cidade['latitude'];
  final double lon = cidade['longitude'];
  final String nomeCidade = cidade  ['name'];

  final String urlComCoordenadas = Uri.parse("$geoUrl?latitude=$lat&longitude=$lon&current=temperature_2m").toString();

}


}


