import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class CustomDateField extends StatelessWidget {
  final TextEditingController controller;
  final String initValue;
  final TextInputType textInputType;
  final int maxLine;
  final FocusNode focusNode;
  final FocusNode nextNode;
  final TextInputAction textInputAction;

  CustomDateField({
    this.controller,
    this.initValue,
    this.textInputType,
    this.maxLine,
    this.focusNode,
    this.nextNode,
    this.textInputAction,
  });

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          TextFormField(
            controller: controller,
            maxLines: maxLine ?? 1,
            focusNode: focusNode,
            keyboardType: textInputType ?? TextInputType.text,
            initialValue: initValue,
            textInputAction: textInputAction ?? TextInputAction.next,
            onFieldSubmitted: (v) {
              FocusScope.of(context).requestFocus(nextNode);
            },
            decoration: InputDecoration(
              hintText: 'Date',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 5),
              isDense: true,
              hintStyle: khulaRegular.copyWith(
                  color: ColorResources.COLOR_GREY,
                  fontSize: Dimensions.FONT_SIZE_SMALL),
              errorStyle: TextStyle(height: 1.5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: ColorResources.COLOR_GRAY_300)),
            ),
          ),
        ],
      ),
    );
  }
}
