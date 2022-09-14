// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Reset%20Password/forget_password_screen.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class SingleTontineScreen extends StatefulWidget {
  const SingleTontineScreen({Key? key}) : super(key: key);

  @override
  State<SingleTontineScreen> createState() => _SingleTontineScreenState();
}

class _SingleTontineScreenState extends State<SingleTontineScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomTabBar(currentIndex: 2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                              'Mes Tontines',
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
                      Spacer(),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Center(
                              child: Container(
                                height: 30.0,
                                width: 67,
                                child: RaisedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           LoggedInUserProfile()),
                                    // );
                                    // if (_formKey.currentState!.validate()) {
                                    //   ScaffoldMessenger.of(context).showSnackBar(
                                    //     const SnackBar(
                                    //         content: Text('Processing Data')),
                                    //   );
                                    // }
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xff8301BC),
                                            Color(0xffD2286A)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 67.0, minHeight: 30.0),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Sortir',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Center(
                        child: Image.asset(
                          "assets/téléchargement 4.png",
                          width: size.width,
                          height: 168,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    ClipPath(
                        clipper: TriangleClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xff8301BC),
                            Color(0xffD2286A)
                          ])),
                          height: 220,
                          width: size.width,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text("Lorem espium anturium kalui apolika",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text("Chaque trimestre",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 11,
                              fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text("Mariage",
                          style: TextStyle(
                              color: Color(0xffE28541),
                              fontFamily: 'AirbnbCereal',
                              fontSize: 11,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    children: [
                      Text("Participants",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      Spacer(),
                      Text("12 participants",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 11,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text("Monatnt",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                      Spacer(),
                      Text("200 \$",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 11,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text("Paricipants actuels",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                      Text("Reste 8 place",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: Image.asset('assets/1.png'),
                    title: Text("Hamadoun",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text("Yara",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    trailing: Image.asset('assets/delete.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: Image.asset('assets/1.png'),
                    title: Text("Hamadoun",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text("Yara",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    trailing: Image.asset('assets/delete.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: Image.asset('assets/1.png'),
                    title: Text("Hamadoun",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text("Yara",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    trailing: Image.asset('assets/delete.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: Image.asset('assets/1.png'),
                    title: Text("Hamadoun",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    subtitle: Text("Yara",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    trailing: Image.asset('assets/delete.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text("Share with friends",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 24,
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                      GradientIcon(
                        Icons.share,
                        30,
                        LinearGradient(
                          colors: <Color>[Color(0xff8301BC), Color(0xffD2286A)],
                        ),
                      ),
                    ],
                  ),
                ),

//
                //
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Next Owner",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 22,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Center(
                    child: Container(
                        child: Column(
                      children: [
                        Image.asset("assets/Photo.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text("Hamadoun yara\n1/04/2023",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Color(0xff777777),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text("Participants",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/profile_pic2.png"),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("Hamadoun\nYara",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/Photo2.png"),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("Hamadoun\nYara",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/profile_pic2.png"),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("Hamadoun\nYara",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Text("Payer 200 le 1/04/2023",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Center(
                          child: Container(
                            height: 58.0,
                            width: 117,
                            child: RaisedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           LoggedInUserProfile()),
                                // );
                                // if (_formKey.currentState!.validate()) {
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //     const SnackBar(
                                //         content: Text('Processing Data')),
                                //   );
                                // }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff8301BC),
                                        Color(0xffD2286A)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 117.0, minHeight: 58.0),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Payer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'AirbnbCereal',
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
