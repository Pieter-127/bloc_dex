import 'package:json_annotation/json_annotation.dart';

part 'pokemon_list_dto.g.dart';

@JsonSerializable()
class PokemonListDto {
  final int count;
  final String next;
  final dynamic previous;
  final List<Result> results;

  PokemonListDto({
    required this.count,
    required this.next,
    this.previous,
    required this.results,
  });

  factory PokemonListDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonListDtoFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonListDtoToJson(this);
}

@JsonSerializable()
class Result {
  final String name;
  final String url;

  Result({
    required this.name,
    required this.url,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
