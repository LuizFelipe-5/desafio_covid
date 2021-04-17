import 'package:desafio_covid/app/models/country.dart';
import 'package:desafio_covid/app/repositories/country_repository.dart';
import 'package:flutter/material.dart';

class CountryController {
  List<Country> countries = [];
  final CountryRepository _repository;
  final state = ValueNotifier<CountryState>(CountryState.start);

  CountryController([CountryRepository repository])
      : _repository = repository ?? CountryRepository();

  Future start() async {
    state.value = CountryState.loading;
    try {
      countries = await _repository.fetchCountries();
      state.value = CountryState.success;
    } catch (e) {
      state.value = CountryState.error;
    }
  }
}

enum CountryState { start, loading, success, error }
