import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/plant_info/presentation/cubit/plant_info_cubit.dart';
import 'package:meet_a_flora/features/plant_info/presentation/cubit/plant_info_state.dart';
import 'package:gap/gap.dart';

class PlantInfoFeatureScreen extends StatelessWidget {
  final String plant;
  const PlantInfoFeatureScreen({super.key, required this.plant});
  @override
  Widget build(BuildContext context) {
    context.read<PlantInfoCubit>().getPlantInfoMethod(plant);

    return Scaffold(
      appBar: AppBar(title: const Text('PlantInfo Feature Screen')),
      body: BlocBuilder<PlantInfoCubit, PlantInfoState>(
        builder: (context, state) {
          if (state is PlantInfoInitialState) {
            return Center(child: CircularProgressIndicator(),);
          } if (state is PlantInfoSuccessState) {
            return Column(children: [
                Image.asset(plant),
                Gap(15),
              ],
            );
          
          }
          if (state is PlantInfoErrorState) {
            return Center(child: Text("error loading${state.message}"));
          
          }
          return Center(child: Text("error"));
        },
      ),
    );
  }
}
