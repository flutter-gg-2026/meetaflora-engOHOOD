import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/plant_info/presentation/cubit/plant_info_cubit.dart';

class PlantInfoFeatureScreen extends StatelessWidget {
  const PlantInfoFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
      final _ = context.read<PlantInfoCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('PlantInfo Feature Screen')),
      body: Column(children: [
          
        ],
      ),
    );
  }
}
