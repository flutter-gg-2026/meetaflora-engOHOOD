import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/network/dio_client.dart';
import 'package:meet_a_flora/core/network/gemini_method.dart';
import 'package:meet_a_flora/features/home/data/models/home_model.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';

abstract class BaseHomeRemoteDataSource {
  Future<List<ImageModel>> getHome();
}

@LazySingleton(as: BaseHomeRemoteDataSource)
class HomeRemoteDataSource implements BaseHomeRemoteDataSource {
  final DioClient _dio;

  HomeRemoteDataSource(this._dio);

  @override
  Future<List<ImageModel>> getHome() async {
    try {
      final res = await _dio.getPhoto();
      print(res.length);
      print("---------------------------------3.1");
      final imageList = List.from(res)
          .map((img) => ImageModel.fromJson(img['src']))
          .toList();
      return imageList;
    } catch (error) {
      print("---------------------------------3.2");
      throw FailureExceptions.getException(error);
    }
  }
}
