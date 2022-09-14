// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Profile/profile_edit_page.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoggedInUserProfile extends StatefulWidget {
  const LoggedInUserProfile({Key? key}) : super(key: key);

  @override
  State<LoggedInUserProfile> createState() => _LoggedInUserProfileState();
}

class _LoggedInUserProfileState extends State<LoggedInUserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(
                fontFamily: 'AirbnbCereal',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/profile_pic.png',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Hamadoun Yara",
                    style: TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {},
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '420',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Ticket',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () async {},
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '1800\$',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Spent',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff8301BC), Color(0xffD2286A)]),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Container(
                        height: 50,
                        width: 170,
                        color: Colors.white,
                        margin: EdgeInsets.all(3),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileEditPage()),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(Icons.edit_rounded),
                              SizedBox(
                                width: 5,
                              ),
                              GradientText(
                                'Editer Profile',
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400),
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Ayoh... Garde tes données en sécurité, vous pouvez les changer à tout moment",
                    style: TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Saido neta-event",
                            style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.email_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "abc@email.com",
                            style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Lorem espium antonicu pirium",
                            style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.chat_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "+999 99 999 999 9",
                            style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
