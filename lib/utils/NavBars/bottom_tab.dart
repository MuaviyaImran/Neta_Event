// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Auth%20Screens/signin_Screen.dart';
import 'package:neta_event/Screens/Events/event_detail_screen.dart';
import 'package:neta_event/Screens/Profile/user_profile.dart';
import 'package:neta_event/Screens/Tickets/tickets.dart';
import 'package:neta_event/home_page.dart';

class BottomTabBar extends StatefulWidget {
  BottomTabBar({required this.currentIndex, Key? key}) : super(key: key);
  int currentIndex;
  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      selectedItemColor: Color(0xFFB0178E),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            widget.currentIndex == 0
                ? "assets/discover_icon.png"
                : "assets/discover_icon_not_filled.png",
            width: 28,
          ),
          label: 'Découvrir ',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 1
              ? GradientIcon(
                  Icons.event_outlined,
                  20,
                  LinearGradient(
                    colors: <Color>[Color(0xff8301BC), Color(0xffD2286A)],
                  ))
              : Icon(Icons.event_outlined, color: Colors.grey),
          label: 'Events',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Image.asset(
              "assets/personpurpleCircle.png",
              width: 40,
              height: 40,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 3
              ? GradientIcon(
                  Icons.add_location_outlined,
                  20,
                  LinearGradient(
                    colors: <Color>[Color(0xff8301BC), Color(0xffD2286A)],
                  ))
              : Icon(Icons.add_location_outlined, color: Colors.grey),
          label: 'Tickets',
        ),
        BottomNavigationBarItem(
          icon: widget.currentIndex == 4
              ? GradientIcon(
                  Icons.add_location_outlined,
                  20,
                  LinearGradient(
                    colors: <Color>[Color(0xff8301BC), Color(0xffD2286A)],
                  ))
              : Icon(
                  Icons.logout_outlined,
                  color: Colors.grey,
                ),
          label: 'Déconnecter',
        ),
      ],
      onTap: (index) {
        print("INDEX :  + $index");
        print("currentIndex :  + $widget.currentIndex");

        setState(() {
          widget.currentIndex = index;
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => EventDetailScreen()),
            );
          }
          if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoggedInUserProfile()),
            );
          }
          if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Tickets()),
            );
          }
          if (index == 4) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),
            );
          }
        });
      },
    );
  }
}
