import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/features/home/data/models/home_model.dart';
import 'package:meet_a_flora/core/errors/network_exceptions.dart';

abstract class BaseHomeRemoteDataSource {
  Future<List<ImageModel>> getHome();
}

@LazySingleton(as: BaseHomeRemoteDataSource)
class HomeRemoteDataSource implements BaseHomeRemoteDataSource {
  HomeRemoteDataSource();

  @override
  Future<List<ImageModel>> getHome() async {
    try {
      final imageJson = await rootBundle.loadString("assets/data/data.json");

      final imageList = List.from(
        await jsonDecode(imageJson),
      ).map((img) => ImageModel.fromJson(img)).toList();
      return imageList;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
