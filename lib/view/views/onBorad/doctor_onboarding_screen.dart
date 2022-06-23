import 'package:mamapintarcare/provider/onboarding_provider.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/auth/auth_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorOnBoardingScreen extends StatefulWidget {
  final Color indicatorColor;
  final Color selectedIndicatorColor;

  DoctorOnBoardingScreen({
    this.indicatorColor = Colors.grey,
    this.selectedIndicatorColor = Colors.black,
  });

  @override
  _DoctorOnBoardingScreenState createState() => _DoctorOnBoardingScreenState();
}

class _DoctorOnBoardingScreenState extends State<DoctorOnBoardingScreen> {
  PageController _pageController = PageController();
  int selectedIndex = 0;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.COLOR_WHITE,
      body: Consumer<OnBoardingProvider>(
        builder: (context, onboardingList, child) => Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: onboardingList.getOnBoardingList().length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  return SafeArea(
                    child: Column(
                      // overflow: Overflow.visible,

                      children: [
                        Flexible(
                          flex: 7,
                          child: Container(
                            // decoration: BoxDecoration(
                            //     border:
                            //         Border.all(color: Colors.black, width: 10)),
                            child: Center(
                              child: Image.asset(
                                onboardingList
                                    .getOnBoardingList()[index]
                                    .imageUrl,
                                fit: BoxFit.fill,
                                width:
                                    MediaQuery.of(context).size.height * 0.25,
                                // height: MediaQuery.of(context).size.height * 0.1,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                              right: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                            ),
                            // decoration: BoxDecoration(
                            //     border:
                            //         Border.all(color: Colors.black, width: 10)),
                            // child: Positioned(
                            //   bottom: 10,
                            //   left: 0,
                            //   right: 0,
                            //   child: Container(
                            //     margin: EdgeInsets.only(
                            //       left: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                            //       right: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                            //       bottom: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                            //       top: 100,
                            //     ),
                            // decoration: BoxDecoration(
                            //     color: ColorResources.COLOR_WHITE,
                            //     borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                // SizedBox(
                                //   height: 50,
                                // ),
                                Text(
                                  onboardingList
                                      .getOnBoardingList()[index]
                                      .title,
                                  style: khulaBold.copyWith(
                                      fontSize: 20,
                                      color: ColorResources.COLOR_GREY),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  onboardingList
                                      .getOnBoardingList()[index]
                                      .description,
                                  textAlign: TextAlign.center,
                                  style: khulaRegular.copyWith(
                                    color: ColorResources.COLOR_GREY,
                                  ),
                                ),
                              ],
                            ),
                            //   ),
                            // ),
                          ),
                        ),
                        Flexible(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                AuthScreen()));
                                  },
                                  child: Text(
                                    Strings.SKIP_FOR_NOW,
                                    style: khulaRegular.copyWith(
                                      fontSize: Dimensions.FONT_SIZE_SMALL,
                                      color: ColorResources.COLOR_GREY,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: _pageIndicators(
                                        onboardingList.getOnBoardingList()),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  // margin: EdgeInsets.only(left: 20, right: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: ColorResources.COLOR_PRIMARY_PINK,
                                  ),
                                  child: FlatButton(
                                    onPressed: () {
                                      if (selectedIndex ==
                                          onboardingList
                                                  .getOnBoardingList()
                                                  .length -
                                              1) {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        AuthScreen()));
                                      } else {
                                        setState(() {
                                          _pageController
                                              .jumpToPage(++selectedIndex);
                                        });
                                      }
                                    },
                                    child: Container(
                                      // width: double.infinity,
                                      alignment: Alignment.center,
                                      child: Text(
                                        selectedIndex ==
                                                onboardingList
                                                        .getOnBoardingList()
                                                        .length -
                                                    1
                                            ? Strings.GET_STARTED
                                            : Strings.NEXT,
                                        style: khulaSemiBold.copyWith(
                                            color: ColorResources.COLOR_WHITE,
                                            fontSize:
                                                Dimensions.FONT_SIZE_DEFAULT),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  );
                },
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _pageIndicators(var onboardingList) {
    List<Container> _indicators = [];
    for (int i = 0; i < onboardingList.length; i++) {
      _indicators.add(Container(
        width: i == selectedIndex ? 18 : 7,
        height: 7,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: i == selectedIndex
              ? ColorResources.COLOR_PRIMARY_PINK
              : ColorResources.COLOR_PINK_50,
        ),
        // child: i == selectedIndex
        //     ? Image.asset(
        //         'assets/images/onboard_dot_active.png',
        //         width: 9,
        //         height: 9,
        //         color: ColorResources.COLOR_PRIMARY,
        //       )
        //     : Image.asset(
        //         'assets/images/onboard_dot_active.png',
        //         width: 9,
        //         height: 9,
        //         color: ColorResources.COLOR_PRIMARY.withOpacity(.5),
        //       ),
      ));
    }
    return _indicators;
  }
}
