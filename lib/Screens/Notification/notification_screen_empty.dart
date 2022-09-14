// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class NotificationEmptyScreen extends StatelessWidget {
  const NotificationEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomTabBar(currentIndex: 2),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Notifications',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.2,
          ),
          Container(
              child: Icon(
            size: 200,
            Icons.notifications_active,
            color: Color.fromARGB(255, 240, 205, 247),
          )),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text("Pas de Notifications!",
                style: TextStyle(
                    fontFamily: 'AirbnbCereal',
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
          ),
          Text(
              "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit sed do eiusmod tempor",
              style: TextStyle(
                  fontFamily: 'AirbnbCereal',
                  color: Color(0xff344B67),
                  fontSize: 16,
                  fontWeight: FontWeight.w400))
        ],
      )),
    );
  }
}
//,