import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_a_flora/core/navigation/routers.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_cubit.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().getHomeMethod();
    return Scaffold(
      appBar: AppBar(title: const Text('Home Feature Screen')),
      body: SafeArea(
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
                ),
                itemCount: state.images.length,
                itemBuilder: (context, index) => Container(
                  height: 20.sw,
                  width: 20.sw,
                  child: GestureDetector(
                    onTap: () {
                      context.push(Routes.plantInfo);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: CachedNetworkImage(
                        imageUrl: state.images[index].image,
                        placeholder: (context, url) =>
                            Center(child: const CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }
            if (state is HomeErrorState) {
              print("Error Loading Data ${state.message}");
              return Center(child: Text("Error Loading Data ${state.message}"));
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
