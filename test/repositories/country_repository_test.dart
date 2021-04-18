import 'dart:convert';

import 'package:desafio_covid/app/repositories/country_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();
  final repository = CountryRepository(dio);
  test('deve trazer um país', () async {
    when(dio.get(any))
        .thenAnswer((_) async => Response(data: jsonDecode(jsonData)));
    final country = await repository.fetchCountries(jsonData);
    print(country.country);
  });
}

String jsonData = '''
{
  "updated": 1618685327698,
  "country": "Brazil",
  "countryInfo": {
    "_id": 76,
    "iso2": "BR",
    "iso3": "BRA",
    "lat": -10,
    "long": -55,
    "flag": "https://disease.sh/assets/img/flags/br.png"
  },
  "cases": 13834342,
  "todayCases": 0,
  "deaths": 369024,
  "todayDeaths": 0,
  "recovered": 12298863,
  "todayRecovered": 0,
  "active": 1166455,
  "critical": 8318,
  "casesPerOneMillion": 64721,
  "deathsPerOneMillion": 1726,
  "tests": 28600000,
  "testsPerOneMillion": 133799,
  "population": 213753558,
  "continent": "South America",
  "oneCasePerPeople": 15,
  "oneDeathPerPeople": 579,
  "oneTestPerPeople": 7,
  "activePerOneMillion": 5457.01,
  "recoveredPerOneMillion": 57537.58,
  "criticalPerOneMillion": 38.91
}
''';
