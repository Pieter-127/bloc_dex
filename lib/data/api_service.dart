import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/pokemon_dto.dart';
import 'dto/pokemon_list_dto.dart';

part 'api_service.g.dart';

@RestApi()
//run `flutter packages pub run build_runner build` to update this class
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET("pokemon")
  Future<PokemonListDto> getPokemonList(@Query("limit") int limit);

  @GET("pokemon/{name}")
  Future<PokemonDto> getPokemonInfo(@Path("name") String pokemonName);
}
