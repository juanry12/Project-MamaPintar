import 'package:mamapintarcare/helper/utils.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/widgets/notification_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.COLOR_HOME_BACKGROUND,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text(Strings.NOTIFICATION,
                  style: khulaSemiBold.copyWith(
                      color: ColorResources.COLOR_GREY, fontSize: 16)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                padding: EdgeInsets.fromLTRB(15, 15, 15, 50),
                itemBuilder: (context, index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(Utils.dateFormatStyle2(),
                            style: khulaRegular.copyWith(
                                color: ColorResources.COLOR_SILVER,
                                fontSize: 12)),
                        SizedBox(height: 5),
                        NotificationItemWidget(),
                      ]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
