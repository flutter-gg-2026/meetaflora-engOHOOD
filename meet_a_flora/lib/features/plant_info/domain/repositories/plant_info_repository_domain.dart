import 'package:fpdart/fpdart.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/plant_info/domain/entities/plant_info_entity.dart';

abstract class PlantInfoRepositoryDomain {
   Future<Either<Failure,PlantInfoEntity>>getPlantInfo(String image);
}
