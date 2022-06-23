import 'package:mamapintarcare/provider/appointment_provider.dart';
import 'package:mamapintarcare/provider/auth_provider.dart';
import 'package:mamapintarcare/provider/chat_provider.dart';
import 'package:mamapintarcare/provider/contact_provider.dart';
import 'package:mamapintarcare/provider/faq_provider.dart';
import 'package:mamapintarcare/provider/membership_provider.dart';
import 'package:mamapintarcare/provider/onboarding_provider.dart';
import 'package:mamapintarcare/provider/profile_provider.dart';
import 'package:mamapintarcare/view/views/splash/spash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'di_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => di.sl<OnBoardingProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<AppointmentProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<AuthProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<ChatProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<ContactProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<FaqProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<MembershipProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<ProfileProvider>()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '6am Tech Doctor Ui Kit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DoctorSplashScreen(),
    );
  }
}
