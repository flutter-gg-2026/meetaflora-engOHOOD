import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/network/dio_client.dart';
import 'package:meet_a_flora/core/network/gemini_method.dart';
import 'package:meet_a_flora/features/home/data/models/home_model.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';

abstract class BaseHomeRemoteDataSource {
  Future<HomeModel> getHome();
}

@LazySingleton(as: BaseHomeRemoteDataSource)
class HomeRemoteDataSource implements BaseHomeRemoteDataSource {
  // final SupabaseClient _supabase;
  // final LocalKeysService _localKeysService;
  final DioClient _dio;

  HomeRemoteDataSource(this._dio);

  @override
  Future<HomeModel> getHome() async {
    try {
      final response = _dio.postRequest();
      final res = _dio.getPhoto();
      print(response);
      print(res);

      return HomeModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
