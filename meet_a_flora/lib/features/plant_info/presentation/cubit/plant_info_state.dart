import 'package:equatable/equatable.dart';
import 'package:meet_a_flora/features/plant_info/data/models/plant_info_model.dart';
import 'package:meet_a_flora/features/plant_info/domain/entities/plant_info_entity.dart';

abstract class PlantInfoState extends Equatable {
  const PlantInfoState();

  @override
  List<Object?> get props => [];
}

class PlantInfoInitialState extends PlantInfoState {}
class PlantInfoSuccessState extends PlantInfoState {
  final PlantInfoEntity plantInfo;
  const PlantInfoSuccessState({required this.plantInfo});
  @override
  List<Object?> get props => [plantInfo];
}

class PlantInfoErrorState extends PlantInfoState {
  final String message;
  const PlantInfoErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

