// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDto _$PokemonDtoFromJson(Map<String, dynamic> json) => PokemonDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      games: (json['game_indices'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonDtoToJson(PokemonDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'game_indices': instance.games,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
    };

PokemonTypeInfo _$PokemonTypeInfoFromJson(Map<String, dynamic> json) =>
    PokemonTypeInfo(
      type: PokemonType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeInfoToJson(PokemonTypeInfo instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) => PokemonType(
      name: json['name'] as String,
    );

Map<String, dynamic> _$PokemonTypeToJson(PokemonType instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

StatInfo _$StatInfoFromJson(Map<String, dynamic> json) => StatInfo(
      base: (json['base_stat'] as num).toInt(),
    );

Map<String, dynamic> _$StatInfoToJson(StatInfo instance) => <String, dynamic>{
      'base_stat': instance.base,
    };

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      gameIndex: (json['game_index'] as num).toInt(),
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.version,
    };

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Sprites _$SpritesFromJson(Map<String, dynamic> json) => Sprites(
      frontDefault: json['front_default'] as String?,
      backDefault: json['back_default'] as String?,
      frontFemale: json['front_female'] as String?,
      backFemale: json['back_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
    );

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
      'back_default': instance.backDefault,
      'front_female': instance.frontFemale,
      'back_female': instance.backFemale,
      'front_shiny': instance.frontShiny,
      'back_shiny': instance.backShiny,
      'front_shiny_female': instance.frontShinyFemale,
      'back_shiny_female': instance.backShinyFemale,
    };
