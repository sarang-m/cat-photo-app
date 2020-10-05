import 'package:flutter/material.dart';

class CatPhotoErrorTile extends StatelessWidget {
  final Color backgroundColor;
  final String errorMessege;
  CatPhotoErrorTile({this.backgroundColor, this.errorMessege});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(errorMessege),
        ),
      ),
    );
  }
}
