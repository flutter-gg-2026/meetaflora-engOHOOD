import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/home/domain/entities/home_entity.dart';

import 'package:meet_a_flora/features/home/data/datasources/home_remote_data_source.dart';
import 'package:meet_a_flora/features/home/data/models/home_model.dart';
import 'package:meet_a_flora/features/home/domain/repositories/home_repository_domain.dart';

@LazySingleton(as: HomeRepositoryDomain)
class HomeRepositoryData implements HomeRepositoryDomain {
  final BaseHomeRemoteDataSource remoteDataSource;

  HomeRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<ImageEntity>, Failure>> getHome() async {
    try {
      final response = await remoteDataSource.getHome();
      return Success(response.map((ent) => ent.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
