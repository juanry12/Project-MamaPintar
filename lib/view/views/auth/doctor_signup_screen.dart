import 'package:mamapintarcare/provider/auth_provider.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/auth/auth_screen.dart';
import 'package:mamapintarcare/view/views/auth/doctor_signin_screen.dart';
import 'package:mamapintarcare/view/views/auth/widget/social_media_widget.dart';
import 'package:mamapintarcare/view/views/form/choose_profile_screen.dart';
import 'package:mamapintarcare/view/views/profile_edit_screen.dart';
import 'package:mamapintarcare/view/views/startup_screen.dart';
import 'package:mamapintarcare/view/widgets/button/custom_button.dart';
import 'package:mamapintarcare/view/widgets/edittext/custom_pass_field.dart';
import 'package:mamapintarcare/view/widgets/edittext/custom_text_field.dart';
import 'package:mamapintarcare/view/widgets/textfield_title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    FocusNode _emailNode = FocusNode();
    FocusNode _passNode = FocusNode();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images1/loginbg.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
              left: 20,
              top: 40,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.15,
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ))),
          Positioned(
            right: 20,
            top: 40,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.20,
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => StartupScreen()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text('Lewati',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                )),
          ),
          Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
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
                                text: 'Hi, \ntunggu apalagi? ayo',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                              TextSpan(
                                  text: ' Daftar',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorResources.COLOR_PRIMARY_PINK))
                            ]))),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            margin: EdgeInsets.only(
                              right: 20,
                            ),
                            child: Stack(
                              children: [
                                // TextFieldTitleWidget(
                                //   imageUrl: 'assets/Icon/email.png',
                                //   title: Strings.EMAIL,
                                // ),
                                Text(Strings.EMAIL),

                                Container(
                                  margin: EdgeInsets.only(top: 20, right: 20),
                                  child: CustomTextField(
                                    hintTxt: Strings.EXAMPLE_MAIL,
                                    textInputType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                    focusNode: _emailNode,
                                    nextNode: _passNode,
                                    isEmail: true,
                                    controller: _emailController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Stack(
                              children: [
                                // TextFieldTitleWidget(
                                //   imageUrl: 'assets/Icon/security.png',
                                //   title: Strings.PASSWORD,
                                // ),
                                Text(Strings.PASSWORD),
                                Container(
                                  margin: EdgeInsets.only(top: 20, right: 20),
                                  child: CustomPassField(
                                    hintTxt: Strings.ENTER_YOUR_PASSWORD,
                                    textInputAction: TextInputAction.done,
                                    focusNode: _passNode,
                                    controller: _passwordController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: 30,
                            ),
                            child: CustomButton(
                              btnTxt: Strings.SIGN_UP,
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            ChooseProfileScreen()));
                              },
                            ),
                          ),
                          // FlatButton(
                          //   onPressed: () {
                          //     //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => AuthScreen()));
                          //   },
                          //   child: Text(
                          //     Strings.FORGET_PASSWORD,
                          //     style: khulaRegular.copyWith(
                          //       fontSize: Dimensions.FONT_SIZE_SMALL,
                          //       color: ColorResources.COLOR_GREY,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   Provider.of<AuthProvider>(context, listen: false)
  //       .initializeCountryCodeList();
  //   FocusNode _emailNode = FocusNode();
  //   FocusNode _passNode = FocusNode();
  //   FocusNode _nameNode = FocusNode();
  //   FocusNode _phoneNode = FocusNode();
  //   TextEditingController _emailController = TextEditingController();
  //   TextEditingController _passwordController = TextEditingController();
  //   TextEditingController _nameController = TextEditingController();
  //   TextEditingController _phoneController = TextEditingController();

  //   return Scaffold(
  //     body: SingleChildScrollView(
  //       child: SafeArea(
  //         child: Column(
  //           children: [
  //             SizedBox(
  //               height: 50.0,
  //             ),
  //             Image.asset(
  //               'assets/images/splash_logo.png',
  //               height: 110,
  //               width: 100,
  //             ),
  //             SizedBox(
  //               height: 50.0,
  //             ),
  //             // for email
  //             Container(
  //               margin: EdgeInsets.only(
  //                   left: Dimensions.MARGIN_SIZE_DEFAULT,
  //                   right: Dimensions.MARGIN_SIZE_DEFAULT,
  //                   bottom: Dimensions.MARGIN_SIZE_DEFAULT),
  //               child: Stack(
  //                 children: [
  //                   TextFieldTitleWidget(
  //                     imageUrl: 'assets/Icon/email.png',
  //                     title: Strings.EMAIL,
  //                   ),
  //                   Container(
  //                     margin:
  //                         EdgeInsets.only(top: Dimensions.MARGIN_SIZE_LARGE),
  //                     child: CustomTextField(
  //                       hintTxt: Strings.NIPON_MAIL,
  //                       textInputType: TextInputType.emailAddress,
  //                       textInputAction: TextInputAction.next,
  //                       focusNode: _emailNode,
  //                       nextNode: _nameNode,
  //                       isEmail: true,
  //                       controller: _emailController,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),

  //             // for Name
  //             Container(
  //               margin: EdgeInsets.only(
  //                   left: Dimensions.MARGIN_SIZE_DEFAULT,
  //                   right: Dimensions.MARGIN_SIZE_DEFAULT,
  //                   bottom: Dimensions.MARGIN_SIZE_DEFAULT),
  //               child: Stack(
  //                 children: [
  //                   TextFieldTitleWidget(
  //                     imageUrl: 'assets/Icon/people.png',
  //                     title: Strings.NAME,
  //                   ),
  //                   Container(
  //                     margin:
  //                         EdgeInsets.only(top: Dimensions.MARGIN_SIZE_LARGE),
  //                     child: CustomTextField(
  //                       hintTxt: Strings.ENTER_YOUR_NAME,
  //                       textInputType: TextInputType.text,
  //                       textInputAction: TextInputAction.next,
  //                       focusNode: _nameNode,
  //                       nextNode: _phoneNode,
  //                       controller: _nameController,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),

  //             // for phone number
  //             Container(
  //               margin: EdgeInsets.only(
  //                   left: Dimensions.MARGIN_SIZE_DEFAULT,
  //                   right: Dimensions.MARGIN_SIZE_DEFAULT,
  //                   bottom: Dimensions.MARGIN_SIZE_DEFAULT),
  //               child: Stack(
  //                 children: [
  //                   TextFieldTitleWidget(
  //                     imageUrl: 'assets/Icon/phone 2.png',
  //                     title: Strings.PHONE,
  //                   ),
  //                   Container(
  //                     margin:
  //                         EdgeInsets.only(top: Dimensions.MARGIN_SIZE_LARGE),
  //                     child: Consumer<AuthProvider>(
  //                         builder: (context, profileProvider, child) {
  //                       return Row(
  //                         children: [
  //                           Expanded(
  //                             child: Container(
  //                               //alignment: Alignment.center,
  //                               child: DropdownButton<String>(
  //                                 value: profileProvider.countryCode ?? '',
  //                                 icon: Icon(
  //                                   Icons.keyboard_arrow_down,
  //                                   color: ColorResources.COLOR_GREY,
  //                                 ),
  //                                 iconSize: 20,
  //                                 elevation: 16,
  //                                 style: khulaSemiBold.copyWith(
  //                                     color: ColorResources.COLOR_GREY,
  //                                     fontSize: Dimensions.FONT_SIZE_SMALL),
  //                                 underline: SizedBox(),
  //                                 onChanged: profileProvider.updateCountryCode,
  //                                 items: profileProvider.countryCodeList
  //                                     .map<DropdownMenuItem<String>>(
  //                                         (String value) {
  //                                   return DropdownMenuItem<String>(
  //                                     value: value,
  //                                     child: Text(value),
  //                                   );
  //                                 }).toList(),
  //                               ),
  //                             ),
  //                           ),
  //                           Expanded(
  //                               flex: 3,
  //                               child: CustomTextField(
  //                                 hintTxt: Strings.ENTER_YOUR_PHONE_NO,
  //                                 textInputType: TextInputType.number,
  //                                 textInputAction: TextInputAction.next,
  //                                 focusNode: _phoneNode,
  //                                 nextNode: _passNode,
  //                                 isPhoneNumber: true,
  //                                 controller: _phoneController,
  //                               )),
  //                         ],
  //                       );
  //                     }),
  //                   ),
  //                   Positioned(
  //                     bottom: 9,
  //                     left: 0,
  //                     right: 0,
  //                     child: Container(
  //                       height: 1,
  //                       color: ColorResources.COLOR_GAINSBORO,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),

  //             // for password
  //             Container(
  //               margin: EdgeInsets.only(
  //                   left: Dimensions.MARGIN_SIZE_DEFAULT,
  //                   right: Dimensions.MARGIN_SIZE_DEFAULT,
  //                   bottom: Dimensions.MARGIN_SIZE_DEFAULT),
  //               child: Stack(
  //                 children: [
  //                   TextFieldTitleWidget(
  //                     imageUrl: 'assets/Icon/security.png',
  //                     title: Strings.PASSWORD,
  //                   ),
  //                   Container(
  //                     margin:
  //                         EdgeInsets.only(top: Dimensions.MARGIN_SIZE_LARGE),
  //                     child: CustomPassField(
  //                       hintTxt: Strings.ENTER_YOUR_PASSWORD,
  //                       textInputAction: TextInputAction.done,
  //                       focusNode: _passNode,
  //                       controller: _passwordController,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),

  //             // for signin button
  //             SizedBox(
  //               height: 40,
  //             ),
  //             Container(
  //               margin: EdgeInsets.only(
  //                 left: Dimensions.MARGIN_SIZE_DEFAULT,
  //                 right: Dimensions.MARGIN_SIZE_DEFAULT,
  //               ),
  //               child: CustomButton(
  //                 btnTxt: Strings.SIGN_UP,
  //                 onTap: () {
  //                   Navigator.of(context).pushReplacement(MaterialPageRoute(
  //                       builder: (BuildContext context) =>
  //                           ProfileEditScreen(fromSetting: false)));
  //                 },
  //               ),
  //             ),

  //             SizedBox(
  //               height: 15,
  //             ),
  //             GestureDetector(
  //               onTap: () {
  //                 Navigator.of(context).push(MaterialPageRoute(
  //                     builder: (context) => DoctorSignInScreen()));
  //               },
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Text(
  //                     Strings.ALREADY_HAVE_AN_ACCOUNT,
  //                     style: khulaSemiBold.copyWith(
  //                         color: ColorResources.COLOR_GREY,
  //                         fontSize: Dimensions.FONT_SIZE_SMALL),
  //                   ),
  //                   Text(
  //                     Strings.SIGN_IN,
  //                     style: khulaSemiBold.copyWith(
  //                         color: ColorResources.COLOR_PRIMARY,
  //                         fontSize: Dimensions.FONT_SIZE_SMALL),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             SizedBox(
  //               height: 25,
  //             ),
  //             Container(
  //               margin: EdgeInsets.all(Dimensions.MARGIN_SIZE_DEFAULT),
  //               child: Row(
  //                 children: [
  //                   Text(
  //                     Strings.OR_SIGN_IN,
  //                     style: khulaRegular.copyWith(
  //                       color: ColorResources.COLOR_GREY,
  //                       fontSize: Dimensions.FONT_SIZE_SMALL,
  //                     ),
  //                   ),
  //                   Expanded(
  //                     child: Container(
  //                       height: 1,
  //                       width: 10,
  //                       color: ColorResources.COLOR_GAINSBORO,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),

  //             // for or sign in
  //             Container(
  //               margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_DEFAULT),
  //               child: Row(
  //                 children: [
  //                   SocialMediaWidget(
  //                     imageUrl: 'assets/Icon/google.png',
  //                   ),
  //                   SocialMediaWidget(
  //                     imageUrl: 'assets/Icon/facebook.png',
  //                   ),
  //                   SocialMediaWidget(
  //                     imageUrl: 'assets/Icon/twitter.png',
  //                   ),
  //                   SocialMediaWidget(
  //                     imageUrl: 'assets/Icon/instagram.png',
  //                   ),
  //                 ],
  //               ),
  //             ),

  //             SizedBox(
  //               height: 50,
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
