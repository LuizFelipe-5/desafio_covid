import 'package:desafio_covid/app/models/country.dart';
import 'package:desafio_covid/app/pages/home_data.dart';
import 'package:dio/dio.dart';
import '../pages/country_details_page.dart';

class CountryRepository {
  Dio dio;
  final url = 'https://disease.sh/v3/covid-19/countries/?strict=true';

  CountryRepository([Dio client]) {
    dio = client ?? Dio();
  }

  Future<List<Country>> fetchCountries() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => Country.fromJson(json)).toList();
  }
}
