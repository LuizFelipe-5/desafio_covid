import 'package:desafio_covid/controllers/continents_controller.dart';
import 'package:desafio_covid/models/continents.dart';
import 'package:desafio_covid/repositories/teste.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class ContinentRespositoryMock extends Mock implements ContinentRepository {}

main() {
  final repository = ContinentRespositoryMock();

  final controller = ContinentController(repository);
  test('deve preencher variavel continents', () async {
    when(repository.fetchContinents()).thenAnswer((_) async => [Continent()]);

    expect(controller.state, ContinentState.start);
    await controller.start();
    expect(controller.state, ContinentState.success);
    expect(controller.continents.isNotEmpty, true);
  });

  test('deve modificar para erro se a request falhar', () async {
    when(repository.fetchContinents()).thenThrow(Exception());

    expect(controller.state, ContinentState.start);
    await controller.start();
    expect(controller.state, ContinentState.error);
  });
}
