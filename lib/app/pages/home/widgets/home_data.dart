class HomeData {
  final String continent;
  final int cases;
  final int active;
  final int deaths;
  final int population;
  final int recovered;
  final int todayCases;
  final int todayDeaths;
  final int tests;
  final List<String> countries;

  HomeData(
      this.continent,
      this.cases,
      this.active,
      this.deaths,
      this.population,
      this.recovered,
      this.todayCases,
      this.todayDeaths,
      this.tests,
      this.countries);
}
