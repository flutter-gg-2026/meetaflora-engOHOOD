import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_cubit.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_state.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().getHomeMethod();
    return Scaffold(
      appBar: AppBar(title: const Text('Home Feature Screen')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeInitialState) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is HomeSuccessState) {
                print("---------------------------------1");
                print(state.images.length);
                return ListView.builder(
                  itemCount: state.images.length,
                  itemBuilder: (context, index) => Container(
                    height: 100,
                    width: 100,
                    child: Image.network(state.images[index].image),
                  ),
                );
              }
               if (state is HomeErrorState) {
                return Center(child: Text("Error Loading Data ${state.message}"));
              }
              return SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
