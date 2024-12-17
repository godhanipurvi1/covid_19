import 'dart:convert';

import 'package:covid_19/model/covid_19_model.dart';
import 'package:http/http.dart' as http;

class Covid19Helper {
  Future<CountryName?> apiHelper() async {
    String apiLink = "https://covid-19-statistics.p.rapidapi.com/regions";
    http.Response response = await http.get(Uri.parse(apiLink), headers: {
      "x-rapidapi-host": "covid-19-statistics.p.rapidapi.com",
      "x-rapidapi-key": "f551e935a4msh1221a3ad40a930fp116dc6jsnb132bc545cdf"
    });
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      CountryName countryName = CountryName.maptomodel(json);
      return countryName;
    }
  }

  Future<ReportModel?> reportsHelper() async {
    String apiLink =
        "https://covid-19-statistics.p.rapidapi.com/reports?city_name=Autauga&region_province=Alabama&iso=USA&region_name=US&q=US%20Alabama&date=2020-04-16";
    http.Response response = await http.get(Uri.parse(apiLink), headers: {
      "x-rapidapi-host": "covid-19-statistics.p.rapidapi.com",
      "x-rapidapi-key": "f551e935a4msh1221a3ad40a930fp116dc6jsnb132bc545cdf'"
    });
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      ReportModel reportModel = ReportModel.maptomodel(json);
      return reportModel;
    }
  }
}
