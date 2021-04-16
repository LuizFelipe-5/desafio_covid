class Continent {
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int tests;
  int population;
  String continent;
  List<String> countries;

  Continent(
      {this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.active,
      this.tests,
      this.population,
      this.continent,
      this.countries});

  Continent.fromJson(Map<String, dynamic> json) {
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    active = json['active'];
    tests = json['tests'];
    population = json['population'];
    continent = json['continent'];
    countries = json['countries'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cases'] = this.cases;
    data['todayCases'] = this.todayCases;
    data['deaths'] = this.deaths;
    data['todayDeaths'] = this.todayDeaths;
    data['recovered'] = this.recovered;
    data['active'] = this.active;
    data['tests'] = this.tests;
    data['population'] = this.population;
    data['continent'] = this.continent;
    data['countries'] = this.countries;
    return data;
  }
}
