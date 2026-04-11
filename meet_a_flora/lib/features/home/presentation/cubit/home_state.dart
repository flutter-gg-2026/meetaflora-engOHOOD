import 'package:equatable/equatable.dart';
import 'package:meet_a_flora/features/home/domain/entities/home_entity.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {}
class HomeSuccessState extends HomeState {
   final List<ImageEntity> images;
  const HomeSuccessState({required this.images});
  @override
  List<Object?> get props => [images];
}

class HomeErrorState extends HomeState {
  final String message;
  const HomeErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

