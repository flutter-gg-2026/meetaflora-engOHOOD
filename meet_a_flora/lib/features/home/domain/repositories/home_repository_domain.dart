import 'package:multiple_result/multiple_result.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/home/domain/entities/home_entity.dart';

abstract class HomeRepositoryDomain {
    Future<Result<List<ImageEntity>, Failure>> getHome();
}
