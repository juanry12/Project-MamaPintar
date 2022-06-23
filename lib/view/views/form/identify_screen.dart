import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/form/permission_banner_screen.dart';
import 'package:mamapintarcare/view/views/startup_screen.dart';
import 'package:mamapintarcare/view/widgets/button/custom_button.dart';
import 'package:mamapintarcare/view/widgets/custom_app_bar.dart';

class BabyIdentifyScreen extends StatefulWidget {
  BabyIdentifyScreen();

  @override
  _BabyIdentifyScreenState createState() => _BabyIdentifyScreenState();
}

class _BabyIdentifyScreenState extends State<BabyIdentifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
          children: [
            CustomAppBar(title: ''),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Expanded(
                child: Container(
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      child: Center(
                        child: Image.asset(
                          'assets/images1/vector3.png',
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.height * 0.35,
                          // height: MediaQuery.of(context).size.height * 0.1,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                        right: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            Strings.BANNER_TITLE,
                            style: khulaBold.copyWith(
                                fontSize: 16,
                                color: ColorResources.COLOR_PRIMARY_PINK),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "To fulfill our mission, we collect information that allows us to track activity within the app and personalize your experience",
                            textAlign: TextAlign.center,
                            style: khulaRegular.copyWith(
                              fontSize: 14,
                              color: ColorResources.COLOR_GREY,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "This data is requested from all users and will be collected with your consent",
                            textAlign: TextAlign.center,
                            style: khulaRegular.copyWith(
                              fontSize: 14,
                              color: ColorResources.COLOR_GREY,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Your privacy is important to us",
                            textAlign: TextAlign.center,
                            style: khulaRegular.copyWith(
                              fontSize: 14,
                              color: ColorResources.COLOR_BLACK,
                            ),
                          ),
                        ],
                      ),
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            )),
            Container(
              margin: EdgeInsets.all(15),
              child: CustomButton(
                btnTxt: Strings.CONTINUE,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => PermissionBannerScreen()));
                },
              ),
            ),
          ],
        )));
  }
}
