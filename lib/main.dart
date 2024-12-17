import 'package:covid_19/pages/home_page.dart';
import 'package:covid_19/provider/covid_19_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Covid19Provider(),
        )
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
