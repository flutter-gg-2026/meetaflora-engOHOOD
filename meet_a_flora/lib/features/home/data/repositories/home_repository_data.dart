import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/home/domain/entities/home_entity.dart';
import 'package:meet_a_flora/features/home/data/datasources/home_remote_data_source.dart';
import 'package:meet_a_flora/features/home/data/models/home_model.dart';
import 'package:meet_a_flora/features/home/domain/repositories/home_repository_domain.dart';
import 'package:fpdart/fpdart.dart';
@LazySingleton(as: HomeRepositoryDomain)
class HomeRepositoryData implements HomeRepositoryDomain {
  final BaseHomeRemoteDataSource remoteDataSource;

  HomeRepositoryData(this.remoteDataSource);

  @override
  Future<Either<Failure,List<ImageEntity>>> getHome() async {
    try {
      final response = await remoteDataSource.getHome();
      return  Either.right(response.map((ent) => ent.toEntity()).toList());
    }  catch (error) {
      switch (error) {
        case Failure _:
          return Either.left(error);
        default:
          return Either.left(UnknownFailure());
      }
    }
  
  }
}
