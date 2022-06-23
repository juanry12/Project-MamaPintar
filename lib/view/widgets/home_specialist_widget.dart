import 'package:mamapintarcare/data/model/specialist.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSpecialistWidget extends StatelessWidget {
  final SpeciaList speciaList;

  HomeSpecialistWidget(this.speciaList);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      alignment: Alignment.center,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: speciaList.backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: .4,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                speciaList.iconUrl,
                width: 42,
                height: 32,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(speciaList.title,
                textAlign: TextAlign.center,
                style: khulaSemiBold.copyWith(
                    color: ColorResources.COLOR_BLACK,
                    fontSize: Dimensions.FONT_SIZE_LARGE))
          ],
        ),
      ),
    );
  }
}
