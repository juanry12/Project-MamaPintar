import 'package:mamapintarcare/data/model/membership_model.dart';
import 'package:mamapintarcare/provider/membership_provider.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/widgets/custom_app_bar.dart';
import 'package:mamapintarcare/view/widgets/rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MemberShipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MembershipModel> membershipList =
        Provider.of<MembershipProvider>(context).getBannerList();
    return Scaffold(
      backgroundColor: ColorResources.COLOR_HOME_BACKGROUND,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: Strings.MEMBERSHIP),
            Expanded(
                child: ListView(
              children: [
                Container(
                  height: 320,
                  child: ListView.builder(
                      padding:
                          EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
                      itemCount: membershipList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            height: 320,
                            width: 185,
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                                color: ColorResources.COLOR_CONFLOWER_BLUE,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${membershipList[index].planTime} plan',
                                  style: khulaBold.copyWith(
                                      color: ColorResources.COLOR_WHITE),
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount:
                                        membershipList[index].planRules.length,
                                    itemBuilder: (c, i) {
                                      return Row(
                                        children: [
                                          Icon(Icons.done,
                                              color: ColorResources.COLOR_WHITE,
                                              size: 14),
                                          SizedBox(width: 10),
                                          Text(
                                            membershipList[index].planRules[i],
                                            style: khulaRegular.copyWith(
                                                color:
                                                    ColorResources.COLOR_WHITE,
                                                fontSize: 9),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: 32,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: ColorResources.COLOR_WHITE,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    Strings.GET_STARTED,
                                    style: khulaBold.copyWith(
                                        color: ColorResources.COLOR_PRIMARY),
                                  ),
                                ),
                              ],
                            ),
                          )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 30, 0, 15),
                  child: Text(Strings.REVIEWS,
                      style: khulaBold.copyWith(
                          color: ColorResources.COLOR_GREY,
                          fontSize: Dimensions.FONT_SIZE_LARGE)),
                ),
                Container(
                  width: double.infinity,
                  height: 800,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: ListView.builder(
                      itemCount: 10,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                            width: double.infinity,
                            height: 90,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(7),
                                        child: Image.asset(
                                          index % 2 == 0
                                              ? 'assets/images/john_sina.png'
                                              : 'assets/images/author_1.png',
                                          height: 50,
                                          width: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                          index % 2 == 0
                                              ? Strings.NAME1
                                              : Strings.NAME2,
                                          style: khulaRegular.copyWith(
                                              color: ColorResources.COLOR_GREY,
                                              fontSize: 10)),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  flex: 8,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RatingBar(),
                                      Text(Strings.LOREM__MAHNA,
                                          style: khulaRegular.copyWith(
                                              color: ColorResources.COLOR_GREY,
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                ),
                SizedBox(height: 30),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
