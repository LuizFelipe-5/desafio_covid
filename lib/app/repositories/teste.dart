import 'package:desafio_covid/app/models/continents.dart';
import 'package:dio/dio.dart';

class ContinentRepository {
  Dio dio;
  final url = 'https://disease.sh/v3/covid-19/continents?yesterday=true';

  ContinentRepository([Dio client]) {
    // Se for nulo retorna Dio()
    dio = client ?? Dio();
  }

  Future<List<Continent>> fetchContinents() async {
    final response = await dio.get(url);
    final list = response.data as List;

    return list.map((json) => Continent.fromJson(json)).toList();

    // List<Continent> continents = [];
    // for (var json in list) {
    //   final continent = Continent.fromJson(json);
    //   continents.add(continent);
    // }

    // return continents;
  }
}
