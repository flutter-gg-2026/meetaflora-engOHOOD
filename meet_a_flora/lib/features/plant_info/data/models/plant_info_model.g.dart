// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlantInfoModel _$PlantInfoModelFromJson(Map<String, dynamic> json) =>
    _PlantInfoModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$PlantInfoModelToJson(_PlantInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
