import 'package:equatable/equatable.dart';

class PlantInfoEntity extends Equatable {
  final String text;

  const PlantInfoEntity({required this.text});

  @override
  List<Object?> get props => [text];
}
