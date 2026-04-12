import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/network/dio_client.dart';
import 'package:meet_a_flora/core/network/gemini_method.dart';
import 'package:meet_a_flora/features/plant_info/data/models/plant_info_model.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';

abstract class BasePlantInfoRemoteDataSource {
  Future<PlantInfoModel> getPlantInfo(String image);
}

@LazySingleton(as: BasePlantInfoRemoteDataSource)
class PlantInfoRemoteDataSource implements BasePlantInfoRemoteDataSource {
  final DioClient _client;

  PlantInfoRemoteDataSource(this._client);

  @override
  Future<PlantInfoModel> getPlantInfo(String image) async {
    try {
      final res = await _client.postRequest(image);
      print(res);
      return PlantInfoModel(text: res);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
