import 'package:bloc_dex/ui/pokemon_list_page.dart';
import 'package:flutter/material.dart';

import 'injectable.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: PokemonListPage.routeName,
      routes: {PokemonListPage.routeName: (context) => const PokemonListPage()},
    );
  }
}