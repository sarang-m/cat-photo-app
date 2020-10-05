import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/helper/cat_photo_helper.dart';

void main() {
  runApp(MyApp());

  CatPhotoHelper().getRandomCatPhoto();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
      ),
    );
  }
}
