
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/plant_info/domain/entities/plant_info_entity.dart';

import 'package:meet_a_flora/features/plant_info/data/datasources/plant_info_remote_data_source.dart';
import 'package:meet_a_flora/features/plant_info/data/models/plant_info_model.dart';
import 'package:meet_a_flora/features/plant_info/domain/repositories/plant_info_repository_domain.dart';

@LazySingleton(as: PlantInfoRepositoryDomain)
class PlantInfoRepositoryData implements PlantInfoRepositoryDomain{
  final BasePlantInfoRemoteDataSource remoteDataSource;


  PlantInfoRepositoryData(this.remoteDataSource);

@override
  Future<Result<PlantInfoEntity, Failure>> getPlantInfo() async {
    try {
      final response = await remoteDataSource.getPlantInfo();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
