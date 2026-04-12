import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_a_flora/core/navigation/routers.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_cubit.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_state.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().getHomeMethod();
    return Scaffold(
      appBar: AppBar(title: const Text('Home Feature Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeInitialState) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is HomeSuccessState) {
                print("---------------------------------1");
                print(state.images.length);
                print(state.images.length);
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: state.images.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      print("---------------------------------4.4");
                      print(state.images[index].image);
                      context.push(
                        Routes.plantInfo,
                        extra: state.images[index].image,
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: Image.asset(state.images[index].image),
                    ),
                  ),
                );
              }
              if (state is HomeErrorState) {
                print("Error Loading Data ${state.message}");
                return Center(
                  child: Text("Error Loading Data ${state.message}"),
                );
              }
              return SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
