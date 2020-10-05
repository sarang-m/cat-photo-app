import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_cat_app/model/core/cat_photo.dart';
import 'package:new_cat_app/model/glitch/glitch.dart';
import 'package:new_cat_app/model/helper/cat_photo_helper.dart';

class CatProvider extends ChangeNotifier {
  final _helper = CatPhotoHelper();
  final _streamController = StreamController<Either<Glitch, CatPhoto>>();

  Stream<Either<Glitch,CatPhoto>> get catPhotoStream{
    return _streamController.
  }
}
