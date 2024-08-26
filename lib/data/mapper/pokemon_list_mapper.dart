import 'package:bloc_dex/ui/model/pokedex_entry_model.dart';

import '../dto/pokemon_list_dto.dart';

extension PokemonListDtoExtensions on PokemonListDto {
  List<PokedexEntryModel> toPokedexEntry() {
    return results.map((entry) {
      final pokemonNumber = determinePokemonNumber(entry);
      final displayNumber = formatNumber(pokemonNumber);
      final url = formatImageUrl(pokemonNumber);
      final name = formatName(entry);
      return PokedexEntryModel(
        pokemonName: name,
        imageUrl: url,
        number: displayNumber,
      );
    }).toList();
  }

  String formatName(Result entry) {
    return entry.name.replaceFirst(entry.name[0], entry.name[0].toUpperCase());
  }

  String formatNumber(int number) {
    // Format the number with leading zeroes if it's less than 1000
    return "#${number.toString().padLeft(3, '0')}";
  }

  String formatImageUrl(int number) {
    final paddedNumber = number.toString().padLeft(3, '0');
    return "https://raw.githubusercontent.com/HybridShivam/Pokemon/master/assets/images/$paddedNumber.png";
  }

  int determinePokemonNumber(Result entry) {
    // Example URL from response = https://pokeapi.co/api/v2/pokemon/1/
    // Extract the number part from the URL
    final segments = entry.url.split('/');
    return int.tryParse(segments[segments.length - 2]) ?? 0;
  }
}
