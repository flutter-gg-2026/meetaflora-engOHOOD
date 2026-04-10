import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'plant_info_di.config.dart'; 

@InjectableInit(
  initializerName: 'initPlantInfo',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/plant_info'],
)
void configurePlantInfo(GetIt getIt) {
  getIt.initPlantInfo();
}
