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
      appBar: AppBar(
        title: Text('Flora', style: Theme.of(context).textTheme.displaySmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: BlocBuilder<PlantInfoCubit, PlantInfoState>(
              builder: (context, state) {
                if (state is PlantInfoInitialState) {
                  return Center(child: CircularProgressIndicator());
                }
                if (state is PlantInfoSuccessState) {
                  return Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(20),
                        child: Image.asset(plant),
                      ),
                      Gap(15),
                      Text(
                        "${state.plantInfo.commonName} (${state.plantInfo.scientificName})",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Gap(15),
                      Text(
                        "Type: ${state.plantInfo.plantType}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Gap(15),
                      Text(
                        state.plantInfo.description,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Gap(15),
                      Text(
                        state.plantInfo.plantType,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  );
                }
                if (state is PlantInfoErrorState) {
                  return Center(
                    child: Text(
                      "Error Loading: ${state.message}",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  );
                }
                return Center(
                  child: Text(
                    "Error",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
