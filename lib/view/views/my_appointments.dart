import 'package:mamapintarcare/data/model/appointment_model.dart';
import 'package:mamapintarcare/provider/appointment_provider.dart';
import 'package:mamapintarcare/utility/colorResources.dart';
import 'package:mamapintarcare/utility/dimensions.dart';
import 'package:mamapintarcare/utility/strings.dart';
import 'package:mamapintarcare/utility/style.dart';
import 'package:mamapintarcare/view/views/online_appointments_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

class MyAppointments extends StatefulWidget {
  @override
  _MyAppointmentsState createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
  bool isIncoming = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.COLOR_HOME_BACKGROUND,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Stack(children: [
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  child: Text('My Appointments',
                      style: khulaBold.copyWith(
                          color: ColorResources.COLOR_GREY,
                          fontSize: Dimensions.FONT_SIZE_LARGE)),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                UpperButton(
                  title: 'incoming',
                  isPressed: isIncoming,
                  onTap: () {
                    setState(() {
                      isIncoming = true;
                    });
                  },
                ),
                SizedBox(width: 40),
                UpperButton(
                  title: 'Past',
                  isPressed: !isIncoming,
                  onTap: () {
                    setState(() {
                      isIncoming = false;
                    });
                  },
                ),
              ]),
            ),
            Expanded(
                child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
              itemCount: Provider.of<AppointmentProvider>(context)
                  .getAppointmentList()
                  .length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    pushNewScreen(
                      context,
                      screen:
                          OnlineAppointmentsScreen(isAppointment: !isIncoming),
                      withNavBar: false,
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
                  child: AppointmentWidget(
                      Provider.of<AppointmentProvider>(context)
                          .getAppointmentList()[index]),
                );
              },
            )),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class UpperButton extends StatelessWidget {
  final String title;
  final bool isPressed;
  final Function onTap;

  UpperButton({@required this.title, @required this.isPressed, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(7),
          color: isPressed
              ? ColorResources.COLOR_PRIMARY
              : ColorResources.COLOR_WHITE,
        ),
        child: Center(
            child: Text(title,
                style: isPressed
                    ? khulaSemiBold.copyWith(color: ColorResources.COLOR_WHITE)
                    : khulaSemiBold.copyWith(
                        color: ColorResources.COLOR_PRIMARY))),
      ),
    ));
  }
}

class AppointmentWidget extends StatelessWidget {
  final AppointmentModel appointmentModel;

  AppointmentWidget(this.appointmentModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorResources.COLOR_WHITE,
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(
          vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL,
          horizontal: Dimensions.PADDING_SIZE_SMALL),
      child: Row(children: [
        Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(appointmentModel.imageUrl,
                height: 50, width: 50, fit: BoxFit.cover),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: appointmentModel.callType == 'Messaging'
                    ? ColorResources.COLOR_YELLOW_SEA
                    : appointmentModel.callType == 'Video Call'
                        ? ColorResources.COLOR_MAYA_BLUE
                        : ColorResources.COLOR_PRIMARY,
              ),
              child: Icon(
                appointmentModel.callType == 'Messaging'
                    ? Icons.message
                    : appointmentModel.callType == 'Video Call'
                        ? Icons.video_call
                        : Icons.call,
                color: Colors.white,
                size: 10,
              ),
            ),
          ),
        ]),
        SizedBox(width: 10),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(appointmentModel.callType,
              style: khulaRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                  color: ColorResources.COLOR_GREY)),
          Text(appointmentModel.name,
              style: khulaRegular.copyWith(
                  fontSize: 20, color: ColorResources.COLOR_PRIMARY)),
          Text(appointmentModel.time,
              style: khulaRegular.copyWith(
                  fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                  color: ColorResources.COLOR_GREY)),
        ]),
        Expanded(child: SizedBox.shrink()),
        Container(
          width: 50,
          height: 15,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: appointmentModel.isAccept
                ? ColorResources.COLOR_MAYA_BLUE
                : ColorResources.COLOR_YELLOW_SEA,
          ),
          child: Text(
            appointmentModel.isAccept ? Strings.ACCEPTED : Strings.DECLINED,
            style: khulaRegular.copyWith(
                color: ColorResources.COLOR_WHITE, fontSize: 8),
          ),
        ),
      ]),
    );
  }
}
