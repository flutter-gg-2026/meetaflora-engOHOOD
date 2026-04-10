import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:meet_a_flora/core/services/local_keys_service.dart';
import 'package:meet_a_flora/features/home/data/models/home_model.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';


abstract class BaseHomeRemoteDataSource {
  Future<HomeModel> getHome();
}


@LazySingleton(as: BaseHomeRemoteDataSource)
class HomeRemoteDataSource implements BaseHomeRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   HomeRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<HomeModel> getHome() async {
    try {
      return HomeModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
