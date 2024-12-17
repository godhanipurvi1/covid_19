import 'package:covid_19/helper/covid_19_helper.dart';
import 'package:covid_19/model/covid_19_model.dart';
import 'package:flutter/material.dart';

class Covid19Provider with ChangeNotifier {
  CountryName? allCountry;
  void getApi() async {
    Covid19Helper helper = Covid19Helper();
    allCountry = await helper.apiHelper();
    notifyListeners();
  }
}
