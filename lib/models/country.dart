class Country {
  String country;
  CountryInfo countryInfo;
  int cases;
  int deaths;
  int recovered;
  int active;
  int population;
  String continent;

  Country(
      {this.country,
      this.countryInfo,
      this.cases,
      this.deaths,
      this.recovered,
      this.active,
      this.population,
      this.continent});

  Country.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    countryInfo = json['countryInfo'] != null
        ? new CountryInfo.fromJson(json['countryInfo'])
        : null;
    cases = json['cases'];
    deaths = json['deaths'];
    recovered = json['recovered'];
    active = json['active'];
    population = json['population'];
    continent = json['continent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    if (this.countryInfo != null) {
      data['countryInfo'] = this.countryInfo.toJson();
    }
    data['cases'] = this.cases;
    data['deaths'] = this.deaths;
    data['recovered'] = this.recovered;
    data['active'] = this.active;
    data['population'] = this.population;
    data['continent'] = this.continent;
    return data;
  }
}

class CountryInfo {
  String flag;

  CountryInfo({this.flag});

  CountryInfo.fromJson(Map<String, dynamic> json) {
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flag'] = this.flag;
    return data;
  }
}
