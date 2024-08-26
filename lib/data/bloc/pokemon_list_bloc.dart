import 'package:bloc_dex/data/api_service.dart';
import 'package:bloc_dex/data/bloc/pokemon_list_event.dart';
import 'package:bloc_dex/data/mapper/pokemon_list_mapper.dart';
import 'package:bloc_dex/injectable.dart';
import 'package:bloc_dex/ui/model/pokedex_entry_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokemonListBloc extends Bloc<PokemonListEvent, LoadPokemonEvent> {
  List<PokedexEntryModel>? _allPokemon;

  PokemonListBloc() : super(Init()) {
    on<LoadPokemonEvent>((event, emit) async {
      try {
        emit(Loading());
        final apiService = getIt<ApiService>();
        final result = await apiService.getPokemonList(event.count);
        _allPokemon = result.toPokedexEntry();
        emit(Success(response: result.toPokedexEntry()));
      } catch (_) {
        emit(Error());
      }
    });

    on<FilterPokemonEvent>((event, emit) {
      if (_allPokemon != null) {
        final filteredPokemon = _allPokemon!.where((pokemon) {
          return pokemon.pokemonName.toLowerCase().contains(event.filter) ||
              pokemon.number.contains(event.filter);
        }).toList();
        emit(Success(response: filteredPokemon));
      } else {
        emit(Error());
      }
    });
  }
}
