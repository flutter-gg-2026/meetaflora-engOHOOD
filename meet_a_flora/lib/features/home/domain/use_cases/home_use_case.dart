import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/home/domain/entities/home_entity.dart';
import 'package:meet_a_flora/features/home/domain/repositories/home_repository_domain.dart';


@lazySingleton
class HomeUseCase {
  final HomeRepositoryDomain _repositoryData;

  HomeUseCase(this._repositoryData);

   Future<Either<Failure,List<ImageEntity>>>getHome() async {
    return _repositoryData.getHome();
  }
}
