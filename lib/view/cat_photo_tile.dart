import 'package:flutter/material.dart';

class CatGrid extends StatelessWidget {
  final String imgUrl;
  CatGrid({this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              const Radius.circular(10),
            ),
            image:
                DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
