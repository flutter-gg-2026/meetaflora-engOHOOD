import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/plant_info/domain/use_cases/plant_info_use_case.dart';
import 'package:meet_a_flora/features/plant_info/presentation/cubit/plant_info_state.dart';

class PlantInfoCubit extends Cubit<PlantInfoState> {
  final PlantInfoUseCase _plantInfoUseCase;

  PlantInfoCubit(this._plantInfoUseCase) : super(PlantInfoInitialState());

  Future<void> getPlantInfoMethod(String image) async {
    final result = await _plantInfoUseCase.getPlantInfo(image);
    result.fold(
      (onLeft) {
        emit(PlantInfoErrorState(message: onLeft.message));
      },
      (onRight) {
        emit(PlantInfoSuccessState(plantInfo: onRight));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
