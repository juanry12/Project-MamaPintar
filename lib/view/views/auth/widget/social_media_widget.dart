import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  final String imageUrl;
  SocialMediaWidget({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27,
      height: 27,
      margin: EdgeInsets.only(right: Dimensions.MARGIN_SIZE_DEFAULT),
      padding: EdgeInsets.all(Dimensions.MARGIN_SIZE_EXTRA_SMALL),
      decoration: BoxDecoration(
          color: ColorResources.COLOR_WHITE,
          borderRadius: BorderRadius.circular(6)),
      child: Image.asset(
        imageUrl,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
