import 'package:json_annotation/json_annotation.dart';

part 'pokemon_dto.g.dart';

@JsonSerializable()
class PokemonDto {
  final int id;
  final String name;

  @JsonKey(name: 'game_indices')
  final List<Game> games;

  final Sprites sprites;
  final List<StatInfo> stats;
  final List<PokemonTypeInfo> types;

  PokemonDto({
    required this.id,
    required this.name,
    required this.games,
    required this.sprites,
    required this.stats,
    required this.types,
  });

  factory PokemonDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonDtoFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonDtoToJson(this);
}

@JsonSerializable()
class PokemonTypeInfo {
  final PokemonType type;

  PokemonTypeInfo({required this.type});

  factory PokemonTypeInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonTypeInfoToJson(this);
}

@JsonSerializable()
class PokemonType {
  final String name;

  PokemonType({required this.name});

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonTypeToJson(this);
}

@JsonSerializable()
class StatInfo {
  @JsonKey(name: 'base_stat')
  final int base;

  StatInfo({required this.base});

  factory StatInfo.fromJson(Map<String, dynamic> json) =>
      _$StatInfoFromJson(json);
  Map<String, dynamic> toJson() => _$StatInfoToJson(this);
}

@JsonSerializable()
class Game {
  @JsonKey(name: 'game_index')
  final int gameIndex;
  final Version version;

  Game({required this.gameIndex, required this.version});

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}

@JsonSerializable()
class Version {
  final String name;
  final String url;

  Version({required this.name, required this.url});

  factory Version.fromJson(Map<String, dynamic> json) =>
      _$VersionFromJson(json);
  Map<String, dynamic> toJson() => _$VersionToJson(this);
}

@JsonSerializable()
class Sprites {
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  @JsonKey(name: 'back_default')
  final String? backDefault;

  @JsonKey(name: 'front_female')
  final String? frontFemale;

  @JsonKey(name: 'back_female')
  final String? backFemale;

  @JsonKey(name: 'front_shiny')
  final String? frontShiny;

  @JsonKey(name: 'back_shiny')
  final String? backShiny;

  @JsonKey(name: 'front_shiny_female')
  final String? frontShinyFemale;

  @JsonKey(name: 'back_shiny_female')
  final String? backShinyFemale;

  Sprites({
    this.frontDefault,
    this.backDefault,
    this.frontFemale,
    this.backFemale,
    this.frontShiny,
    this.backShiny,
    this.frontShinyFemale,
    this.backShinyFemale,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
  Map<String, dynamic> toJson() => _$SpritesToJson(this);
}
