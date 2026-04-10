import 'package:get_it/get_it.dart';
import 'package:meet_a_flora/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/features/home/di/home_di.dart';
import 'package:meet_a_flora/features/plant_info/di/plant_info_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configureHome(getIt);
    configurePlantInfo(getIt);
}
