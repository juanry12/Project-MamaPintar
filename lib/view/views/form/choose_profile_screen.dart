import 'package:mamapintarcare/provider/onboarding_provider.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/auth/auth_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamapintarcare/view/views/form/banner_screen.dart';
import 'package:mamapintarcare/view/widgets/button/custom_button.dart';
import 'package:mamapintarcare/view/widgets/custom_app_bar.dart';
import 'package:mamapintarcare/view/widgets/edittext/custom_input_field.dart';
import 'package:mamapintarcare/view/widgets/textfield_title_widget.dart';
import 'package:provider/provider.dart';

class ChooseProfileScreen extends StatefulWidget {
  ChooseProfileScreen();

  @override
  _ChooseProfileScreenState createState() => _ChooseProfileScreenState();
}

class _ChooseProfileScreenState extends State<ChooseProfileScreen> {
  int _profile = 0;
  String _roleProfile;
  List<String> _roleProfiles = <String>['Ayah', 'Ibu', 'Lainnya'];
  TextEditingController _nameController = TextEditingController();
  FocusNode _nameNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: Column(children: [
                CustomAppBar(title: ''),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Text(
                  "Buatlah Profilemu",
                  style: khulaBold.copyWith(
                      fontSize: 20, color: ColorResources.COLOR_GRAY_800),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _profile = 1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _profile == 1
                                    ? CircleAvatar(
                                        radius: 30,
                                        backgroundColor:
                                            ColorResources.COLOR_PRIMARY_PINK,
                                        child: Icon(
                                          Icons.baby_changing_station,
                                          color: ColorResources.COLOR_WHITE,
                                          size: 24,
                                        ),
                                      )
                                    : CircleAvatar(
                                        radius: 30,
                                        backgroundColor:
                                            ColorResources.COLOR_GAINSBORO,
                                        child: Icon(Icons.baby_changing_station,
                                            color: Colors.white, size: 24)),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2),
                                  child: Text(
                                    Strings.PROFILE_1,
                                    style: khulaSemiBold.copyWith(
                                        color: ColorResources.COLOR_GRAY_600,
                                        fontSize: Dimensions.FONT_SIZE_SMALL),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _profile = 2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _profile == 2
                                    ? CircleAvatar(
                                        radius: 30,
                                        backgroundColor:
                                            ColorResources.COLOR_PRIMARY_PINK,
                                        child: Icon(
                                          Icons.favorite,
                                          color: ColorResources.COLOR_WHITE,
                                          size: 24,
                                        ),
                                      )
                                    : CircleAvatar(
                                        radius: 30,
                                        backgroundColor:
                                            ColorResources.COLOR_GAINSBORO,
                                        child: Icon(
                                          Icons.favorite,
                                          color: ColorResources.COLOR_WHITE,
                                          size: 24,
                                        ),
                                      ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2),
                                  child: Text(
                                    Strings.PROFILE_2,
                                    style: khulaSemiBold.copyWith(
                                        color: ColorResources.COLOR_GRAY_600,
                                        fontSize: Dimensions.FONT_SIZE_SMALL),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _profile = 3;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _profile == 3
                                    ? CircleAvatar(
                                        radius: 30,
                                        backgroundColor:
                                            ColorResources.COLOR_PRIMARY_PINK,
                                        child: Icon(
                                          Icons.school,
                                          color: ColorResources.COLOR_WHITE,
                                          size: 24,
                                        ),
                                      )
                                    : CircleAvatar(
                                        radius: 30,
                                        backgroundColor:
                                            ColorResources.COLOR_GAINSBORO,
                                        child: Icon(
                                          Icons.school,
                                          color: ColorResources.COLOR_WHITE,
                                          size: 24,
                                        ),
                                      ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2),
                                  child: Text(
                                    Strings.PROFILE_3,
                                    style: khulaSemiBold.copyWith(
                                        color: ColorResources.COLOR_GRAY_600,
                                        fontSize: Dimensions.FONT_SIZE_SMALL),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Text(
                  "Create Your Profile",
                  style: khulaBold.copyWith(
                      fontSize: 20, color: ColorResources.COLOR_GRAY_800),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                        color: ColorResources.COLOR_GRAY_400,
                      )),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.04),
                  child: DropdownButton(
                    value: _roleProfile,
                    items: _roleProfiles.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Row(
                          children: <Widget>[
                            Text(
                              item,
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _roleProfile = value;
                      });
                    },
                    hint: Text("Saya Sebagai"),
                    isExpanded: true,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Text(
                  "MY NAME IS:",
                  style: khulaBold.copyWith(
                      fontSize: 20, color: ColorResources.COLOR_GRAY_800),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  child: CustomInputField(
                    textInputType: TextInputType.text,
                    focusNode: _nameNode,
                    controller: _nameController,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: CustomButton(
                    btnTxt: Strings.CONTINUE,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => BannerScreen()));
                    },
                  ),
                ),
              ]),
            ),
          ],
        )));
  }
}
