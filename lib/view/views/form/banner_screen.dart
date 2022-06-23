import 'package:mamapintarcare/provider/onboarding_provider.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/auth/auth_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mamapintarcare/view/views/form/identify_screen.dart';
import 'package:mamapintarcare/view/views/startup_screen.dart';
import 'package:mamapintarcare/view/widgets/button/custom_button.dart';
import 'package:mamapintarcare/view/widgets/custom_app_bar.dart';
// import 'package:mamapintarcare/view/widgets/edittext/custom_input_field.dart';
import 'package:mamapintarcare/view/widgets/textfield_title_widget.dart';
import 'package:provider/provider.dart';
import 'package:mamapintarcare/view/widgets/edittext/custom_input_field.dart';

class BannerScreen extends StatefulWidget {
  BannerScreen();

  @override
  _BannerScreenState createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  TextEditingController _nameController = TextEditingController();
  FocusNode _nameNode = FocusNode();
  int _gender = 0;

  String date = "";
  DateTime selectedDate = DateTime.now();
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
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _gender = 1;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _gender == 1
                                        ? CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorResources.COLOR_PRIMARY,
                                            child: Icon(
                                              Icons.done,
                                              color: ColorResources.COLOR_WHITE,
                                              size: 35,
                                            ),
                                          )
                                        : CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorResources.COLOR_GAINSBORO,
                                          ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text(
                                        Strings.GENDER_1,
                                        style: khulaSemiBold.copyWith(
                                            color:
                                                ColorResources.COLOR_GRAY_700,
                                            fontSize:
                                                Dimensions.FONT_SIZE_SMALL),
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
                                    _gender = 2;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _gender == 2
                                        ? CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorResources.COLOR_PRIMARY,
                                            child: Icon(
                                              Icons.done,
                                              color: ColorResources.COLOR_WHITE,
                                              size: 35,
                                            ),
                                          )
                                        : CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorResources.COLOR_GAINSBORO,
                                          ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text(
                                        Strings.GENDER_2,
                                        style: khulaSemiBold.copyWith(
                                            color:
                                                ColorResources.COLOR_GRAY_700,
                                            fontSize:
                                                Dimensions.FONT_SIZE_SMALL),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _gender = 3;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _gender == 3
                                        ? CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorResources.COLOR_PRIMARY,
                                            child: Icon(
                                              Icons.done,
                                              color: ColorResources.COLOR_WHITE,
                                              size: 35,
                                            ),
                                          )
                                        : CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorResources.COLOR_GAINSBORO,
                                          ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text(
                                        Strings.GENDER_3,
                                        style: khulaSemiBold.copyWith(
                                            color:
                                                ColorResources.COLOR_GRAY_700,
                                            fontSize:
                                                Dimensions.FONT_SIZE_SMALL),
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
                                    _gender = 4;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _gender == 4
                                        ? CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorResources.COLOR_PRIMARY,
                                            child: Icon(
                                              Icons.done,
                                              color: ColorResources.COLOR_WHITE,
                                              size: 35,
                                            ),
                                          )
                                        : CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorResources.COLOR_GAINSBORO,
                                          ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2),
                                      child: Text(
                                        Strings.GENDER_4,
                                        style: khulaSemiBold.copyWith(
                                            color:
                                                ColorResources.COLOR_GRAY_700,
                                            fontSize:
                                                Dimensions.FONT_SIZE_SMALL),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Text(
                          "Akan Lahir Pada Tanggal:",
                          style: khulaBold.copyWith(
                              fontSize: 20,
                              color: ColorResources.COLOR_GRAY_800),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorResources.COLOR_BLACK)),
                          child: GestureDetector(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: Text(
                                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Text(
                          "Bayi saya namanya akan:",
                          style: khulaBold.copyWith(
                              fontSize: 20,
                              color: ColorResources.COLOR_GRAY_800),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.02),
                          margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.02),
                          child: CustomInputField(
                            textInputType: TextInputType.text,
                            focusNode: _nameNode,
                            controller: _nameController,
                          ),
                        ),
                      ],
                    ))),
            Container(
              margin: EdgeInsets.all(15),
              child: CustomButton(
                btnTxt: Strings.CONTINUE,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => BabyIdentifyScreen()));
                },
              ),
            ),
          ],
        )));
  }

  _selectDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}
