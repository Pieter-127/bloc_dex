import 'package:bloc_dex/ui/pokemon_list_page_content.dart';
import 'package:flutter/cupertino.dart';

class PokemonListPage extends StatelessWidget {
  static const String routeName = '/';

  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: PokemonListPageContent()
    );
  }
}
