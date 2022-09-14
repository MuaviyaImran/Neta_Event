// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Notification/notification_screen.dart';
import 'package:neta_event/utils/bars/searchBar.dart';

class TopAppBar extends StatelessWidget {
  TopAppBar({this.scaffoldState, Key? key}) : super(key: key);
  var scaffoldState;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: const Radius.circular(50.0),
                bottomRight: const Radius.circular(50.0)),
            gradient:
                LinearGradient(colors: [Color(0xff8301BC), Color(0xffD2286A)])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      scaffoldState.currentState!.openDrawer();
                    },
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hey, Bienenu ..',
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Saif Yahyaoui',
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notifications()),
                      );
                    },
                    icon: Icon(
                      Icons.notifications_rounded,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SearchBarSc(),
            ),
          ],
        ));
  }
}
