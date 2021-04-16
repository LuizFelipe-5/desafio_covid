import 'package:desafio_covid/app/models/country.dart';
import 'package:dio/dio.dart';

class CountryRepository {
  Dio dio;
  final url = 'https://disease.sh/v3/covid-19/countries?yesterday=true';

  CountryRepository([Dio client]) {
    dio = client ?? Dio();
  }

  Future<List<Country>> fetchCountries() async {
    final response = await dio.get(url);
    final list = response.data as List;

    return list.map((json) => Country.fromJson(json)).toList();
  }
}
