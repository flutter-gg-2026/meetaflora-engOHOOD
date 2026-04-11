import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/home/presentation/cubit/home_cubit.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
      final _ = context.read<HomeCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home Feature Screen')),
      body: Column(children: [
          ElevatedButton(onPressed: (){context.read<HomeCubit>().getHomeMethod();}, child: Text('click'))
        ],
      ),
    );
  }
}
