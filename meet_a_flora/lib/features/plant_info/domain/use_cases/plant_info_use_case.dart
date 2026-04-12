import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/plant_info/domain/entities/plant_info_entity.dart';
import 'package:meet_a_flora/features/plant_info/domain/repositories/plant_info_repository_domain.dart';


@lazySingleton
class PlantInfoUseCase {
  final PlantInfoRepositoryDomain _repositoryData;

  PlantInfoUseCase(this._repositoryData);

  Future<Either<Failure,PlantInfoEntity>> getPlantInfo(String image) async {
    return _repositoryData.getPlantInfo(image);
  }
}
