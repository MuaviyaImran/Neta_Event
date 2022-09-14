// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neta_event/Screens/Auth%20Screens/signin_Screen.dart';
import 'package:neta_event/Screens/Events/event_detail_screen.dart';
import 'package:neta_event/Screens/Profile/user_profile.dart';
import 'package:neta_event/Screens/Splash%20Screen/spash_screen.dart';
import 'package:neta_event/Screens/Splash%20Screen/wizard_screen.dart';
import 'package:neta_event/Screens/Tickets/tickets.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/utils/route_names.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    //return MultiProvider(
    //  providers: [
    // ChangeNotifierProvider<AccountProvider>(
    //   lazy: false,
    //   create: (_) {
    //     return AccountProvider();
    //   },
    // ),
    //  ],
    // builder: (ctx, _) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
      initialRoute: RouteNames.splashScreen,
      routes: {
        RouteNames.splashScreen: (BuildContext _) {
          return SplashScreen();
        },
        RouteNames.wizardScreen: (BuildContext _) {
          return WizardScreen();
        },
      },
    );
    //  },
    //);
  }
}
