import 'package:meet_a_flora/features/plant_info/domain/entities/plant_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'plant_info_model.freezed.dart';
part 'plant_info_model.g.dart';

@freezed
abstract class PlantInfoModel with _$PlantInfoModel {
  const factory PlantInfoModel({
    required String commonName,
    required String scientificName,
    required String plantType,
    required String description,
    required List<String> keyFeatures,
    required String healthStatus,
    required String healthReason,
    required List<String> possibleUses,
    required String watering,
    required String light,
    required String soil,
  }) = _PlantInfoModel;

  factory PlantInfoModel.fromJson(Map<String, Object?> json) =>
      _$PlantInfoModelFromJson(json);
}

extension PlantInfoModelMapper on PlantInfoModel {
  PlantInfoEntity toEntity() {
    return PlantInfoEntity(
      commonName: commonName,
      scientificName: scientificName,
      plantType: plantType,
      description: description,
      keyFeatures: keyFeatures,
      healthStatus: healthStatus,
      healthReason: healthReason,
      possibleUses: possibleUses,
      watering: watering,
      light: light,
      soil: soil,
    );
  }
}
