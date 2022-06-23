import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final String btnTxt;
  final bool isWhiteBackground;
  final double fontSize;
  final FontWeight btnFontWeight;

  CustomButton(
      {this.onTap,
      @required this.btnTxt,
      this.isWhiteBackground = false,
      this.fontSize = Dimensions.FONT_SIZE_DEFAULT,
      this.btnFontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          color: isWhiteBackground
              ? ColorResources.COLOR_WHITE
              : ColorResources.COLOR_PRIMARY_PINK,
          borderRadius: BorderRadius.circular(10)),
      child: FlatButton(
        onPressed: onTap,
        padding: EdgeInsets.all(0),
        child: Text(btnTxt,
            style: khulaSemiBold.copyWith(
                color: isWhiteBackground
                    ? ColorResources.COLOR_PRIMARY_PINK
                    : ColorResources.COLOR_WHITE,
                fontSize: fontSize,
                fontWeight: btnFontWeight)),
      ),
    );
  }
}
