import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_a_flora/core/navigation/routers.dart';
import 'package:meet_a_flora/core/theme/cubit/theme_cubit.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_cubit.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_state.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().getHomeMethod();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meet a Flora',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        actions: [
          BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, themeState) {
              return IconButton(
                onPressed: () {
                  context.read<ThemeCubit>().switchTheme();
                },
                icon: Icon(
                  themeState == ThemeMode.dark
                      ? Icons.dark_mode
                      : Icons.light_mode,
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeInitialState) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is HomeSuccessState) {
            
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: state.images.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                   
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
          
              return Center(
                child: Text(
                  "Error Loading Data ${state.message}",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
