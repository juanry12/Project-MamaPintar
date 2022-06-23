import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/form/check_banner_screen.dart';
import 'package:mamapintarcare/view/views/form/identify_screen.dart';
import 'package:mamapintarcare/view/views/startup_screen.dart';
import 'package:mamapintarcare/view/widgets/button/custom_button.dart';
import 'package:mamapintarcare/view/widgets/custom_app_bar.dart';

class PermissionBannerScreen extends StatefulWidget {
  PermissionBannerScreen();

  @override
  _PermissionBannerScreenState createState() => _PermissionBannerScreenState();
}

class _PermissionBannerScreenState extends State<PermissionBannerScreen> {
  List<String> _containerPermission = <String>[
    'Article recommendations',
    'Parenting hacks',
    'Product announcements',
    'Book doctor for baby',
    'Special offers and more!',
  ];
  List<Widget> _permissions = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(_containerPermission.length);

    _containerPermission
        .map((e) => {
              _permissions.add(Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: ColorResources.COLOR_PRIMARY_PINK,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    e,
                    style: khulaRegular.copyWith(
                      fontSize: 20,
                      color: ColorResources.COLOR_GRAY_600,
                    ),
                  ),
                ],
              )),
              // print(e)
            })
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorResources.COLOR_PRIMARY_PINK,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(35),
                              bottomLeft: Radius.circular(35),
                            ),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(Strings.SECOND_BANNER_TITLE,
                                      textAlign: TextAlign.center,
                                      style: khulaRegular.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.COLOR_WHITE,
                                      )),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                    child: Image.asset(
                                        "assets/images1/notification.png",
                                        fit: BoxFit.scaleDown)),
                              ),
                            ],
                          ))),
                  Positioned(
                    left: 0,
                    right: 0,
                    // bottom: 10,
                    top: 330,
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 30, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _permissions,
                        )),
                  ),
                  CustomAppBar(title: ''),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: CustomButton(
                btnTxt: Strings.CONTINUE,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CheckBannerScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
        // Column(
        //   children: [
            // Expanded(
            //     child: Container(
            //   child: Column(
            //     children: [
            //       Flexible(
            //         flex: 3,
            //         child: Container(
            //           // decoration: BoxDecoration(
            //           //     border: Border.all(color: Colors.blueAccent)),
            //           child: Stack(
            //             children: [
            //               Container(
            //                 child: Center(
            //                   child: Image.asset(
            //                     'assets/images/doctor1.jpg',
            //                     fit: BoxFit.fill,
            //                     width: MediaQuery.of(context).size.height,
            //                     // height: MediaQuery.of(context).size.height * 0.1,
            //                   ),
            //                 ),
            //               ),
            //               Container(
            //                 padding: EdgeInsets.symmetric(
            //                     vertical:
            //                         MediaQuery.of(context).size.height * 0.07,
            //                     horizontal:
            //                         MediaQuery.of(context).size.width * 0.1),
            //                 child: Text(
            //                   Strings.SECOND_BANNER_TITLE,
            //                   textAlign: TextAlign.center,
            //                   style: khulaRegular.copyWith(
            //                     fontSize: 20,
            //                     fontWeight: FontWeight.bold,
            //                     color: ColorResources.COLOR_WHITE,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Flexible(
            //         flex: 3,
            //         child: Container(
            //           width: double.infinity,
            //           // decoration: BoxDecoration(
            //           //     border: Border.all(color: Colors.blueAccent)),
            //           padding: EdgeInsets.only(
            //               top: MediaQuery.of(context).size.height * 0.08,
            //               left: MediaQuery.of(context).size.width * 0.1,
            //               right: MediaQuery.of(context).size.width * 0.1),
            //           // margin: EdgeInsets.only(
            //           // left: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
            //           // right: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
            //           // ),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: _permissions,
            //           ),
            //           //   ),
            //           // ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )),
            // Container(
            //   margin: EdgeInsets.all(15),
            //   child: CustomButton(
            //     btnTxt: Strings.CONTINUE,
            //     onTap: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (_) => CheckBannerScreen()));
            //     },
            // ),
            // ),
//           ],
//         ),
//        ,
//       ],
//     )));
//   }
// }
