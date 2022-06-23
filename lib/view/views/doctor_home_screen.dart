import 'package:mamapintarcare/data/repository/doctor_data.dart';
import 'package:mamapintarcare/data/repository/specialist_data.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/appointment_screen.dart';
import 'package:mamapintarcare/view/widgets/button/custom_button.dart';
import 'package:mamapintarcare/view/widgets/home_specialist_cardwidget.dart';
import 'package:mamapintarcare/view/widgets/home_specialist_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'about_doctor_screen.dart';
import 'doctor_screen.dart';

class DoctorHomeScreen extends StatefulWidget {
  @override
  _DoctorHomeScreenState createState() => _DoctorHomeScreenState();
}

//appbar
class _DoctorHomeScreenState extends State<DoctorHomeScreen> {
  Widget _homeToolbar(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Row(
        children: [
          Container(
            width: 37,
            height: 35,
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: ColorResources.COLOR_GAINSBORO,
              child: Icon(
                Icons.person,
                color: ColorResources.COLOR_WHITE,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.NIPON_ROY,
                  style: khulaRegular.copyWith(
                      color: ColorResources.COLOR_GREY, fontSize: 20),
                ),
                Text(
                  Strings.FIND_BEST_DOCTORS_EASILY,
                  style: khulaRegular.copyWith(
                      color: ColorResources.COLOR_GREY,
                      fontSize: Dimensions.FONT_SIZE_SMALL),
                ),
              ],
            ),
          ),
          Container(
              width: 38,
              height: 35,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: ColorResources.COLOR_WHITE,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(Icons.notifications_outlined)),
        ],
      ),
    );
  }

//search widget
  Widget _searchDoctors(BuildContext context) {
    return Container(
      height: 43,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(left: 20, right: 5),
      decoration: BoxDecoration(
        color: ColorResources.COLOR_WHITE,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12,
            child: Text(
              Strings.SEARCH_HINT,
              style: khulaSemiBold.copyWith(
                color: ColorResources.COLOR_GAINSBORO,
              ),
            ),
          ),
          Positioned(right: 10, top: 10, child: Icon(Icons.search)),
        ],
      ),
    );
  }

  Widget _tumbuhKembang(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: ColorResources.COLOR_WHITE,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //         child: Row(
          //       children: [
          //         Expanded(
          //           flex: 2,
          //           child: Container(
          //               alignment: Alignment.centerLeft,
          //               child: Text('Week 1',
          //                   style: TextStyle(
          //                       fontSize: 24, fontWeight: FontWeight.bold))),
          //         ),
          //         Expanded(
          //             flex: 1,
          //             child: Row(
          //               children: [
          //                 Expanded(
          //                     flex: 1,
          //                     child: Container(
          //                         child: Icon(Icons.arrow_back_ios_new))),
          //                 Expanded(
          //                     flex: 1,
          //                     child: Container(
          //                         child: Icon(Icons.arrow_forward_ios)))
          //               ],
          //             ))
          //       ],
          //     ))),
          Expanded(
              flex: 5,
              child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    'assets/images1/watermelon.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                        padding: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            'Cilla sekarang seperti ukuran semangka',
                                            style: TextStyle(
                                              fontSize: 18,
                                            )))),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorResources.COLOR_GRAY_300),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('Weight: \n 7.63kg',
                                        style: TextStyle(
                                          fontSize: 18,
                                        )))),
                            Expanded(
                                flex: 1,
                                child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorResources.COLOR_GRAY_300),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text('Length: \n 34cm',
                                        style: TextStyle(
                                          fontSize: 18,
                                        )))),
                          ])),
                      Expanded(
                          flex: 1,
                          child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                  'She is due to arrive in \n0 weeks 2 days',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                  )))),
                    ],
                  ))),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: CustomButton(
                fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                btnFontWeight: FontWeight.bold,
                btnTxt: Strings.LIHAT_PROGRESS,
                onTap: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => StartupScreen()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _specialistList(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(color: ColorResources.COLOR_HOME_BACKGROUND),
      child: ListView.builder(
          itemCount: SpecialistData.speciaList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                pushNewScreen(
                  context,
                  screen: DoctorScreen(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child: HomeSpecialistWidget(SpecialistData.speciaList[index]),
            );
          }),
    );
  }

  Widget _specialistBannerList(BuildContext context) {
    return Container(
      height: 110,
      margin: EdgeInsets.only(left: 16),
      child: ListView.builder(
          itemCount: SpecialistData.getBannerList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                pushNewScreen(
                  context,
                  screen: AppointmentsScreen(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child:
                  HomeSpecialistCardWidget(SpecialistData.getBannerList[index]),
            );
          }),
    );
  }

  Widget _showAllDoctor(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: SpecialistData.speciaList.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            pushNewScreen(
              context,
              screen: DoctorScreen(),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: HomeSpecialistWidget(SpecialistData.speciaList[index]),
        ),
        staggeredTileBuilder: (int index) => new StaggeredTile.count(1, 1.3),
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 20.0,
      ),
    );
  }

  Widget _showAllDoctor2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 35),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: SpecialistData.speciaList2.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            pushNewScreen(
              context,
              screen: DoctorScreen(),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: HomeSpecialistWidget(SpecialistData.speciaList2[index]),
        ),
        staggeredTileBuilder: (int index) => new StaggeredTile.count(1, 1.3),
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 20.0,
      ),
    );
  }

//navbar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.COLOR_GRAY_100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // _homeToolbar(context),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    pushNewScreen(
                      context,
                      screen: DoctorScreen(),
                      withNavBar: false,
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
                  child: _searchDoctors(context)),
              SizedBox(
                height: 20,
              ),
              _tumbuhKembang(context),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //     margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_DEFAULT),
              //     child: Text(
              //       Strings.SPECIALIST,
              //       style: khulaSemiBold.copyWith(
              //           color: ColorResources.COLOR_GREY,
              //           fontSize: Dimensions.FONT_SIZE_LARGE),
              //       textAlign: TextAlign.start,
              //     )),
              // _specialistList(context),
              // SizedBox(
              //   height: 20,
              // ),
              // _specialistBannerList(context),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: ColorResources.COLOR_WHITE,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        margin:
                            EdgeInsets.only(left: Dimensions.MARGIN_SIZE_LARGE),
                        child: Text(
                          Strings.LAYANAN,
                          style: khulaSemiBold.copyWith(
                              color: ColorResources.COLOR_PRIMARY_PINK,
                              fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    _showAllDoctor(context),
                    Container(
                        margin:
                            EdgeInsets.only(left: Dimensions.MARGIN_SIZE_LARGE),
                        child: Text(
                          Strings.OTHER,
                          style: khulaSemiBold.copyWith(
                              color: ColorResources.COLOR_PRIMARY_PINK,
                              fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    _showAllDoctor2(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
