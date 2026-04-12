// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlantInfoModel _$PlantInfoModelFromJson(Map<String, dynamic> json) =>
    _PlantInfoModel(
      commonName: json['commonName'] as String,
      scientificName: json['scientificName'] as String,
      plantType: json['plantType'] as String,
      description: json['description'] as String,
      keyFeatures: (json['keyFeatures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      healthStatus: json['healthStatus'] as String,
      healthReason: json['healthReason'] as String,
      possibleUses: (json['possibleUses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      watering: json['watering'] as String,
      light: json['light'] as String,
      soil: json['soil'] as String,
    );

Map<String, dynamic> _$PlantInfoModelToJson(_PlantInfoModel instance) =>
    <String, dynamic>{
      'commonName': instance.commonName,
      'scientificName': instance.scientificName,
      'plantType': instance.plantType,
      'description': instance.description,
      'keyFeatures': instance.keyFeatures,
      'healthStatus': instance.healthStatus,
      'healthReason': instance.healthReason,
      'possibleUses': instance.possibleUses,
      'watering': instance.watering,
      'light': instance.light,
      'soil': instance.soil,
    };
