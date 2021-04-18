import 'package:desafio_covid/app/models/country.dart';
import 'package:dio/dio.dart';

class CountryRepository {
  Dio dio;

  CountryRepository([Dio client]) {
    dio = client ?? Dio();
  }

  Future<Country> fetchCountries(String countryName) async {
    final response = await dio.get(
        'https://disease.sh/v3/covid-19/countries/${countryName.toLowerCase()}?strict=true');
    return Country.fromJson(response.data);
  }
}
