import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.star, color: ColorResources.COLOR_YELLOW_SEA),
        SizedBox(width: 10),
        Icon(Icons.star, color: ColorResources.COLOR_YELLOW_SEA),
        SizedBox(width: 10),
        Icon(Icons.star, color: ColorResources.COLOR_YELLOW_SEA),
        SizedBox(width: 10),
        Icon(Icons.star, color: ColorResources.COLOR_YELLOW_SEA),
        SizedBox(width: 10),
        Icon(Icons.star, color: ColorResources.COLOR_YELLOW_SEA),
      ],
    );
  }
}
