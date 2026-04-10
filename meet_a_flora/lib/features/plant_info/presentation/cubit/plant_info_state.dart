import 'package:equatable/equatable.dart';

abstract class PlantInfoState extends Equatable {
  const PlantInfoState();

  @override
  List<Object?> get props => [];
}

class PlantInfoInitialState extends PlantInfoState {}
class PlantInfoSuccessState extends PlantInfoState {}

class PlantInfoErrorState extends PlantInfoState {
  final String message;
  const PlantInfoErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

