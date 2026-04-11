import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/home/presentation/pages/home_feature_screen.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_cubit.dart';
import 'package:meet_a_flora/features/plant_info/presentation/pages/plant_info_feature_screen.dart';
import 'package:meet_a_flora/features/plant_info/presentation/cubit/plant_info_cubit.dart';



class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("splash screen")));
        }, // SplashScreen
      ),
    
  GoRoute(
    path: Routes.home,
    builder: (context, state) => BlocProvider(
          create: (context) => HomeCubit(GetIt.I.get()),
          child: const HomeFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.plantInfo,
    builder: (context, state) => BlocProvider(
          create: (context) => PlantInfoCubit(GetIt.I.get()),
          child: const PlantInfoFeatureScreen(),
        ),
  ),
],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
