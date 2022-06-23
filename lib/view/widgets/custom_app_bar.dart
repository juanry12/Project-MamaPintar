import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  CustomAppBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 20, top: 20),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            // decoration: BoxDecoration(
            //     color: ColorResources.COLOR_WHITE.withOpacity(.6),
            //     borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: ColorResources.COLOR_GRAY_800,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(right: 50),
            alignment: Alignment.center,
            child: Text(title,
                style: khulaSemiBold.copyWith(
                    fontSize: 16, color: ColorResources.COLOR_GREY)),
          )),
        ],
      ),
    );
  }
}
