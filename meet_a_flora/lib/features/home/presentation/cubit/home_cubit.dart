import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/home/domain/use_cases/home_use_case.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;

  HomeCubit(this._homeUseCase) : super(HomeInitialState());

  Future<void> getHomeMethod() async {
    final result = await _homeUseCase.getHome();
    result.when(
      (success) {
       emit(HomeSuccessState());
      },
      (whenError) {
       //here is when error result
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
