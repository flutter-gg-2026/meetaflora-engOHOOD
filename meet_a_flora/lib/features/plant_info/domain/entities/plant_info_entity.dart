import 'package:equatable/equatable.dart';

class PlantInfoEntity extends Equatable {
  final String commonName;
  final String scientificName;
  final String plantType;
  final String description;
  final List<String> keyFeatures;
  final String healthStatus;
  final String healthReason;
  final List<String> possibleUses;
  final String watering;
  final String light;
  final String soil;


  const PlantInfoEntity({
    required this.commonName,
    required this.scientificName,
    required this.plantType,
    required this.description,
    required this.keyFeatures,
    required this.healthStatus,
    required this.healthReason,
    required this.possibleUses,
    required this.watering,
    required this.light,
    required this.soil,
  });
  @override
  List<Object?> get props => [
    commonName,
    scientificName,
    plantType,
    description,
    keyFeatures,
    healthStatus,
    healthReason,
    possibleUses,
    watering,
    light,
    soil,
    
  ];
}
