// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:meet_a_flora/core/services/local_keys_service.dart' as _i95;
import 'package:meet_a_flora/features/plant_info/data/datasources/plant_info_remote_data_source.dart'
    as _i653;
import 'package:meet_a_flora/features/plant_info/data/repositories/plant_info_repository_data.dart'
    as _i511;
import 'package:meet_a_flora/features/plant_info/domain/repositories/plant_info_repository_domain.dart'
    as _i427;
import 'package:meet_a_flora/features/plant_info/domain/use_cases/plant_info_use_case.dart'
    as _i309;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initPlantInfo({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i653.BasePlantInfoRemoteDataSource>(
      () => _i653.PlantInfoRemoteDataSource(
        gh<_i95.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i427.PlantInfoRepositoryDomain>(
      () => _i511.PlantInfoRepositoryData(
        gh<_i653.BasePlantInfoRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i309.PlantInfoUseCase>(
      () => _i309.PlantInfoUseCase(gh<_i427.PlantInfoRepositoryDomain>()),
    );
    return this;
  }
}
