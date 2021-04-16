import 'package:desafio_covid/models/continents.dart';
import 'package:desafio_covid/repositories/teste.dart';

class ContinentController {
  List<Continent> continents = [];
  final repository = ContinentRepository();

  Future start() async {
    continents = await repository.fetchContinents();
  }
}
