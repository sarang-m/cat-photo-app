import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:new_cat_app/model/core/cat_photo.dart';
import 'package:new_cat_app/model/glitch/glitch.dart';
import 'package:new_cat_app/model/glitch/noInternetglitch.dart';
import 'package:new_cat_app/model/services/cat_photo-api.dart';

class CatPhotoHelper {
  final api = CatPhotoApi();

  Future<Either<Glitch, CatPhoto>> getRandomCatPhoto() async {
    final apiResuts = await api.getRandomCatPhoto();
    print(apiResuts);
    return apiResuts.fold((l) {
      print(l);
      return Left(NoInternetGlitch());
    }, (r) {
      print(r);
      final photo = CatPhoto.fromJson(jsonDecode(r)[0]);
      print(photo);
      return Right(photo);
    });
  }
}
