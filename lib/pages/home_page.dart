import 'package:covid_19/provider/covid_19_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var providerR = context.read<Covid19Provider>();
    var providerW = context.watch<Covid19Provider>();
    return Scaffold(
        body: ListView.builder(
      itemCount: providerW.allCountry?.dataModel?.length,
      itemBuilder: (context, index) =>
          Text(providerW.allCountry?.dataModel?[0].name ?? "no data "),
    ));
  }
}
