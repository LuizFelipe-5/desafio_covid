import 'package:desafio_covid/app/models/continents.dart';
import 'package:desafio_covid/app/repositories/continent_repository.dart';

import 'package:flutter/material.dart';

class ContinentController {
  List<Continent> continents = [];
  final ContinentRepository _repository;
  final state = ValueNotifier<ContinentState>(ContinentState.start);

  ContinentController([ContinentRepository repository])
      : _repository = repository ?? ContinentRepository();

  Future start() async {
    state.value = ContinentState.loading;
    try {
      continents = await _repository.fetchContinents();
      state.value = ContinentState.success;
    } catch (e) {
      state.value = ContinentState.error;
    }
  }
}

enum ContinentState { start, loading, success, error }
