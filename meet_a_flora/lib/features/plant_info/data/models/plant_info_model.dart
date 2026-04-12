import 'package:meet_a_flora/features/plant_info/domain/entities/plant_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'plant_info_model.freezed.dart';
part 'plant_info_model.g.dart';

@freezed
abstract class PlantInfoModel with _$PlantInfoModel {
  const factory PlantInfoModel({required String text}) = _PlantInfoModel;

  factory PlantInfoModel.fromJson(Map<String, Object?> json) =>
      _$PlantInfoModelFromJson(json);
}

extension PlantInfoModelMapper on PlantInfoModel {
  PlantInfoEntity toEntity() {
    return PlantInfoEntity(text: text);
  }
}
