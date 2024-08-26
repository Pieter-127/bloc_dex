import 'package:bloc_dex/ui/model/pokedex_entry_model.dart';

sealed class PokemonListEvent {}

class LoadPokemonEvent extends PokemonListEvent {
  final int count;

  LoadPokemonEvent({this.count = 151});
}

class Init extends LoadPokemonEvent {}

class Loading extends LoadPokemonEvent {}

class Success extends LoadPokemonEvent {
  final List<PokedexEntryModel>? response;

  Success({required this.response});
}

class FilteredEmptyResults extends LoadPokemonEvent {}

class Error extends LoadPokemonEvent {
  //going to keep this a generic error for now, because in a perfect world everything works :)
}

class FilterPokemonEvent extends PokemonListEvent {
  final String filter;

  FilterPokemonEvent({required this.filter});
}
