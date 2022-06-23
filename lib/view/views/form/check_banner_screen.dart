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

class CheckBannerScreen extends StatefulWidget {
  CheckBannerScreen();

  @override
  _CheckBannerScreenState createState() => _CheckBannerScreenState();
}

class _CheckBannerScreenState extends State<CheckBannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        CustomAppBar(title: ''),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(
                  flex: 6,
                  child: Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images1/vector3.png",
                          fit: BoxFit.contain))),
              Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'kami disini untuk setiap langkah kecil si buah hatimu',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    )),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Icon(
                            Icons.circle,
                            color: ColorResources.COLOR_PRIMARY_PINK,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                                'Mengerti apa yang terjadi dengan tubuh buah hati setiap minggunya'),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Icon(
                            Icons.circle,
                            color: ColorResources.COLOR_RED,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                                'Tetaplah melacak pertumbuhan milestones nya si buah hati'),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Icon(
                            Icons.circle,
                            color: ColorResources.COLOR_ORANGE_600,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text(
                                'Konten setiap harinya untuk melatih si buah hati'),
                          ))
                    ],
                  ),
                ],
              ),
            )),
        // Expanded(
        //     child: Container(
        //   child: Column(
        //     children: [
        //       Flexible(
        //         flex: 5,
        //         child: Container(
        //           child: Center(
        //             child: Image.asset(
        //               'assets/images1/vector3.png',
        //               fit: BoxFit.fill,
        //               width: MediaQuery.of(context).size.height * 0.35,
        //               // height: MediaQuery.of(context).size.height * 0.1,
        //             ),
        //           ),
        //         ),
        //       ),
        //       Flexible(
        //         flex: 1,
        //         child: Container(
        //           child: Center(child: Text("testtste")),
        //         ),
        //       ),
        //       Flexible(
        //         flex: 5,
        //         child: Container(
        //           width: double.infinity,
        //           decoration: BoxDecoration(
        //               border: Border.all(color: Colors.blueAccent)),
        //           padding: EdgeInsets.only(
        //               top: MediaQuery.of(context).size.height * 0.05,
        //               left: MediaQuery.of(context).size.width * 0.1,
        //               right: MediaQuery.of(context).size.width * 0.1),
        //           // margin: EdgeInsets.only(
        //           // left: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
        //           // right: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
        //           // ),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Wrap(
        //                 crossAxisAlignment: WrapCrossAlignment.center,
        //                 children: [
        //                   Icon(
        //                     Icons.circle,
        //                     color: ColorResources.COLOR_PRIMARY_PINK,
        //                     size: 30,
        //                   ),
        //                   SizedBox(
        //                     width: 20,
        //                   ),
        //                   Text(
        //                     "Understand what’s happening with your baby and body each week",
        //                     style: khulaRegular.copyWith(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.bold,
        //                       color: ColorResources.COLOR_GRAY_400,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               SizedBox(
        //                 height: 15,
        //               ),
        //               Wrap(
        //                 crossAxisAlignment: WrapCrossAlignment.center,
        //                 children: [
        //                   Icon(
        //                     Icons.circle,
        //                     color: ColorResources.COLOR_ORANGE_600,
        //                     size: 30,
        //                   ),
        //                   SizedBox(
        //                     width: 20,
        //                   ),
        //                   Text(
        //                     "test",
        //                     style: khulaRegular.copyWith(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.bold,
        //                       color: ColorResources.COLOR_GRAY_400,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               SizedBox(
        //                 height: 15,
        //               ),
        //               Wrap(
        //                 crossAxisAlignment: WrapCrossAlignment.center,
        //                 children: [
        //                   Icon(
        //                     Icons.circle,
        //                     color: ColorResources.COLOR_SALMON,
        //                     size: 30,
        //                   ),
        //                   SizedBox(
        //                     width: 20,
        //                   ),
        //                   Text(
        //                     "test",
        //                     style: khulaRegular.copyWith(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.bold,
        //                       color: ColorResources.COLOR_GRAY_400,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //           //   ),
        //           // ),
        //         ),
        //       ),
        //     ],
        //   ),
        // )),
        Container(
          margin: EdgeInsets.all(15),
          child: CustomButton(
            btnTxt: Strings.CONTINUE,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => StartupScreen()));
            },
          ),
        ),
      ],
    )));
  }
}
