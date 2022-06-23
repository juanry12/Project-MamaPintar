import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/auth/doctor_signin_screen.dart';
import 'package:mamapintarcare/view/views/auth/doctor_signup_screen.dart';
import 'package:mamapintarcare/view/widgets/button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get_it/get_it.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images1/homebackground.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                padding: EdgeInsets.only(left: 30, top: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: RichText(
                            text: TextSpan(
                                text: 'Welcome to',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                              TextSpan(
                                  text: '\nMama Pintar Care',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorResources.COLOR_PRIMARY_PINK))
                            ]))),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: CustomButton(
                                btnTxt: Strings.CREATE_AN_ACCOUNT,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              DoctorSignUpScreen()));
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: CustomButton(
                                btnTxt: Strings.SIGN_IN,
                                isWhiteBackground: true,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              DoctorSignInScreen()));
                                },
                              ),
                            ),
                          ],
                        ))
                  ],
                )),
          ),
        ],
      ),

      // body: Container(
      //   // decoration: BoxDecoration(
      //   //     border: Border.all(color: Colors.blueAccent, width: 10)),
      //   child: Column(
      //     children: [
      //       Expanded(
      //         flex: 1,
      //         child: Container(),
      //       ),
      //       Expanded(
      //           flex: 6,
      //           child: Container(
      //               child: Column(
      //             children: [
      //               Expanded(
      //                 flex: 2,
      //                 child: Container(
      //                     margin: EdgeInsets.only(
      //                         bottom:
      //                             MediaQuery.of(context).size.height * 0.08),
      //                     // decoration: BoxDecoration(
      //                     //     border: Border.all(
      //                     //         color: Colors.blueAccent, width: 10)),
      //                     // padding: EdgeInsets.only(
      //                     //     bottom: MediaQuery.of(context).size.height * 0.1),
      //                     alignment: Alignment.bottomCenter,
      //                     child: Image.asset(
      //                         'assets/images1/mamapintar_berwarna.png',
      //                         scale: 3)),
      //               ),
      //               Expanded(
      //                   flex: 3,
      //                   child: Container(
      //                       padding: EdgeInsets.only(
      //                         left: MediaQuery.of(context).size.width * 0.07,
      //                         right: MediaQuery.of(context).size.width * 0.07,
      //                       ),
      //                       child: Align(
      //                           alignment: Alignment.bottomCenter,
      //                           child: Column(
      //                             children: [
      //                               Padding(
      //                                   padding: EdgeInsets.only(),
      //                                   child: InkWell(
      //                                       child: MaterialButton(
      //                                     minWidth: 350,
      //                                     height: MediaQuery.of(context)
      //                                             .size
      //                                             .height *
      //                                         0.06,
      //                                     child: FittedBox(
      //                                       child: Row(
      //                                         mainAxisAlignment:
      //                                             MainAxisAlignment.center,
      //                                         children: [
      //                                           Image.asset(
      //                                             'assets/images1/appleputih.png',
      //                                             scale: 20,
      //                                           ),
      //                                           SizedBox(
      //                                             width: MediaQuery.of(context)
      //                                                     .size
      //                                                     .width *
      //                                                 0.06,
      //                                           ),
      //                                           Text(
      //                                             'Sign in with Apple',
      //                                             style: TextStyle(
      //                                               fontSize: 18,
      //                                               color: Colors.white,
      //                                             ),
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                     color: Colors.black,
      //                                     shape: RoundedRectangleBorder(
      //                                       borderRadius:
      //                                           BorderRadius.circular(30),
      //                                     ),
      //                                     onPressed: () {},
      //                                   ))),
      //                               SizedBox(
      //                                 height:
      //                                     MediaQuery.of(context).size.height *
      //                                         0.03,
      //                               ),
      //                               Padding(
      //                                   padding: EdgeInsets.only(),
      //                                   child: InkWell(
      //                                       child: MaterialButton(
      //                                     minWidth: 350,
      //                                     height: MediaQuery.of(context)
      //                                             .size
      //                                             .height *
      //                                         0.06,
      //                                     child: FittedBox(
      //                                       child: Row(
      //                                         mainAxisAlignment:
      //                                             MainAxisAlignment.center,
      //                                         children: [
      //                                           Image.asset(
      //                                             'assets/images1/logofb.png',
      //                                             scale: 27,
      //                                           ),
      //                                           SizedBox(
      //                                             width: MediaQuery.of(context)
      //                                                     .size
      //                                                     .width *
      //                                                 0.01,
      //                                           ),
      //                                           Text(
      //                                             'Log In with Facebook',
      //                                             style: TextStyle(
      //                                               fontSize: 18,
      //                                               color: Colors.white,
      //                                             ),
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                     color:
      //                                         Color.fromRGBO(24, 119, 242, 1),
      //                                     shape: RoundedRectangleBorder(
      //                                       borderRadius:
      //                                           BorderRadius.circular(30),
      //                                     ),
      //                                     onPressed: () {},
      //                                   ))),
      //                               SizedBox(
      //                                 height: 10,
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Expanded(
      //                                       child: Container(
      //                                           margin: EdgeInsets.only(
      //                                               left: 10, right: 20),
      //                                           child: Divider(
      //                                             color: Colors.black,
      //                                             height: 36,
      //                                           ))),
      //                                   Text('or'),
      //                                   Expanded(
      //                                       child: Container(
      //                                           margin: EdgeInsets.only(
      //                                               left: 20, right: 10),
      //                                           child: Divider(
      //                                             color: Colors.black,
      //                                             height: 36,
      //                                           ))),
      //                                 ],
      //                               ),
      //                               Row(
      //                                 children: [
      //                                   Expanded(
      //                                       flex: 1,
      //                                       child: Padding(
      //                                           padding: EdgeInsets.only(),
      //                                           child: InkWell(
      //                                               child: MaterialButton(
      //                                             minWidth: 350,
      //                                             height: MediaQuery.of(context)
      //                                                     .size
      //                                                     .height *
      //                                                 0.06,
      //                                             child: Text(
      //                                               'Log in',
      //                                               style: TextStyle(
      //                                                 fontSize: 18,
      //                                                 color: Colors.white,
      //                                               ),
      //                                             ),
      //                                             color: ColorResources
      //                                                 .COLOR_PINK_400,
      //                                             shape: RoundedRectangleBorder(
      //                                               borderRadius:
      //                                                   BorderRadius.circular(
      //                                                       30),
      //                                             ),
      //                                             onPressed: () {
      //                                               Navigator.pushReplacement(
      //                                                   context,
      //                                                   MaterialPageRoute(
      //                                                       builder: (_) =>
      //                                                           DoctorSignInScreen()));
      //                                             },
      //                                           )))),
      //                                   SizedBox(
      //                                     width: MediaQuery.of(context)
      //                                             .size
      //                                             .width *
      //                                         0.03,
      //                                   ),
      //                                   Expanded(
      //                                       flex: 1,
      //                                       child: Padding(
      //                                           padding: EdgeInsets.only(),
      //                                           child: InkWell(
      //                                               child: MaterialButton(
      //                                             minWidth: 350,
      //                                             height: MediaQuery.of(context)
      //                                                     .size
      //                                                     .height *
      //                                                 0.06,
      //                                             child: Text(
      //                                               'Sign up!',
      //                                               style: TextStyle(
      //                                                 fontSize: 18,
      //                                                 color: Colors.white,
      //                                               ),
      //                                             ),
      //                                             color: Color.fromRGBO(
      //                                                 238, 150, 55, 1),
      //                                             shape: RoundedRectangleBorder(
      //                                               borderRadius:
      //                                                   BorderRadius.circular(
      //                                                       30),
      //                                             ),
      //                                             onPressed: () {
      //                                               Navigator.pushReplacement(
      //                                                   context,
      //                                                   MaterialPageRoute(
      //                                                       builder: (_) =>
      //                                                           DoctorSignInScreen()));
      //                                             },
      //                                           )))),
      //                                 ],
      //                               ),
      //                             ],
      //                           )))),
      //               Expanded(
      //                 flex: 1,
      //                 child: RichText(
      //                     text: TextSpan(
      //                         text: 'By joining you agree to our',
      //                         style: TextStyle(
      //                           color: Colors.grey,
      //                         ),
      //                         children: <TextSpan>[
      //                       TextSpan(
      //                           text: '\nTerms and Privacy Policy',
      //                           style: TextStyle(
      //                             color: Colors.grey[800],
      //                           ),
      //                           recognizer: TapGestureRecognizer()
      //                             ..onTap = () async {
      //                               final url = 'https://indihome.co.id/';
      //                             }),
      //                     ])),
      //               )
      //             ],
      //           )))
      //     ],
      //   ),
      // ),

      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height,
      //   child: Center(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Image.asset(
      //           'assets/images1/mamapintar_berwarna.png',
      //           width: MediaQuery.of(context).size.width * 0.5,
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.only(
      //             top: 60,
      //             bottom: Dimensions.PADDING_SIZE_EXTRA_LARGE,
      //           ),
      //           child: Text(
      //             Strings.CREATE_A_FREE_ACCOUNT,
      //             style: khulaSemiBold.copyWith(
      //               color: ColorResources.COLOR_GREY,
      //               fontSize: Dimensions.FONT_SIZE_LARGE,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(15),
      //           child: CustomButton(
      //             btnTxt: Strings.CREATE_AN_ACCOUNT,
      //             onTap: () {
      //               Navigator.pushReplacement(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (_) => DoctorSignUpScreen()));
      //             },
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(left: 15, right: 15),
      //           child: CustomButton(
      //             btnTxt: Strings.SIGN_IN,
      //             isWhiteBackground: true,
      //             onTap: () {
      //               Navigator.pushReplacement(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (_) => DoctorSignInScreen()));
      //             },
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
