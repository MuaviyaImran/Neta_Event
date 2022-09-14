// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Auth%20Screens/signin_Screen.dart';
import 'package:neta_event/Screens/Events/event_detail_screen.dart';
import 'package:neta_event/Screens/Events/single_event_screen.dart';
import 'package:neta_event/Screens/Packs/packs.dart';
import 'package:neta_event/Screens/Profile/user_profile.dart';
import 'package:neta_event/Screens/Tickets/tickets.dart';
import 'package:neta_event/Screens/Tontine/single_tontine_screen.dart';
import 'package:neta_event/Screens/Tontine/tontine.dart';
import 'package:neta_event/main.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';
import 'package:neta_event/utils/bars/drawer_client.dart';
import 'package:neta_event/utils/bars/drawer_company.dart';
import 'package:neta_event/utils/bars/drawer_propriter.dart';

import 'Screens/Donation/donation_detail_screen.dart';
import 'utils/NavBars/appbar.dart';

class HomePage extends StatefulWidget {
  HomePage({this.userCat, Key? key}) : super(key: key);
  String? userCat;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldState,
      bottomNavigationBar: BottomTabBar(currentIndex: 0),
      drawer: widget.userCat == 'client'
          ? MyDrawerClient()
          : widget.userCat == 'event_owner'
              ? MyDrawerPropriter()
              : widget.userCat == 'company'
                  ? MyDrawerCompany()
                  : Container(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          TopAppBar(scaffoldState: scaffoldState),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Text("Exclusives",
                          style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                      Spacer(),
                      Row(
                        children: [
                          Text("Voir tout",
                              style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.forward_outlined,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 255,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) => Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      elevation: 2,
                      shadowColor: Colors.grey,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/122.png"),
                            SizedBox(
                              height: 6,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Merci à tous pour la co...",
                                style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.pink, size: 15),
                                      Icon(Icons.star,
                                          color: Colors.pink, size: 15),
                                      Icon(Icons.star,
                                          color: Colors.pink, size: 15),
                                      Icon(Icons.star,
                                          color: Colors.pink, size: 15),
                                      Icon(Icons.star,
                                          color: Colors.grey, size: 15),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Text(
                                    "Prix : 70€",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on_outlined,
                                      color: Colors.grey),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '36 Guild Street, Bamako',
                                    style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Text("Catégories",
                          style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                      Spacer(),
                      Row(
                        children: [
                          Text("Voir tout",
                              style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.forward_outlined,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 115,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) => Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      elevation: 2,
                      shadowColor: Colors.grey,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: Stack(
                          children: [
                            Image.asset("assets/123.png"),
                            Positioned(
                              top: 25,
                              left: 10,
                              child: Text('Musique &\nchant',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Text("Evènements",
                          style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventDetailScreen()),
                          );
                        },
                        child: Row(
                          children: [
                            Text("Voir tout",
                                style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 360,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) => Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      elevation: 2,
                      shadowColor: Colors.grey,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 12),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingleEventScreen()),
                            );
                          },
                          child: ListTile(
                            title: Text('1er  May- LUN -2:00 PM',
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue)),
                            subtitle: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('One man show \nramatonlaye',
                                    style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        size: 20,
                                      ),
                                      Text('Radius Gallery • Santa Cruz',
                                          style: TextStyle(
                                            fontFamily: 'AirbnbCereal',
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            leading: Image.asset(
                              fit: BoxFit.contain,
                              "assets/124.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Row(
                    children: [
                      Text("Packs",
                          style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Packs()),
                          );
                        },
                        child: Row(
                          children: [
                            Text("Voir tout",
                                style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                      height: 300,
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 20,
                          );
                        },
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) =>
                            InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DonationPayOptions()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: 300,
                              width: 244,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: 265,
                                      width: 244,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Positioned(
                                      top: 0,
                                      left: 20,
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                              'assets/Rectangle 4291.png'),
                                          Positioned(
                                              top: 21,
                                              left: 50.5,
                                              child: Text(
                                                'Pack Bronze',
                                                style: TextStyle(
                                                    fontFamily: 'AirbnbCereal',
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ))
                                        ],
                                      )),
                                  Positioned(
                                    left: 70,
                                    top: 75,
                                    child: Text(
                                      '10 euro',
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          fontSize: 30,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      child:
                                          Image.asset('assets/Vector 19.png')),
                                  Positioned(
                                    left: 60,
                                    top: 175,
                                    child: Row(
                                      children: [
                                        Image.asset('assets/darkTick.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '3 évenèments',
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 60,
                                    top: 210,
                                    child: Row(
                                      children: [
                                        Image.asset('assets/darkTick.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '7 jours de publicité',
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 75,
                                    top: 250,
                                    child: Stack(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/Rectangle 4296.png'),
                                            SizedBox(
                                              width: 5,
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: 6,
                                          left: 23,
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            'Acheter',
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Text("Tontine",
                          style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tontine()),
                          );
                        },
                        child: Row(
                          children: [
                            Text("Voir tout",
                                style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.forward_outlined,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    height: 270,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 15,
                        );
                      },
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingleTontineScreen()),
                            );
                          },
                          child: Container(
                            color: Colors.grey[50],
                            child: Stack(
                              children: [
                                ClipPath(
                                    clipper: TriangleClipper(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                        Color(0xff8301BC),
                                        Color(0xffD2286A)
                                      ])),
                                      height: 220,
                                      width: 220,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: 73, left: 20),
                                  child: Container(
                                    decoration: const BoxDecoration(boxShadow: [
                                      BoxShadow(
                                        blurRadius: 15.0,
                                      ),
                                    ]),
                                    child: Container(
                                      height: 180,
                                      width: 180,
                                      color: Colors.white,
                                      child: Column(children: [
                                        Image.asset(
                                          "assets/téléchargement 4.png",
                                          width: 230,
                                          fit: BoxFit.contain,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Mariage',
                                                style: TextStyle(
                                                    fontFamily: 'AirbnbCereal',
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffE28541)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lorem espium anturium ka',
                                                style: TextStyle(
                                                  fontFamily: 'AirbnbCereal',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                '500\$ Chaque trimestre',
                                                style: TextStyle(
                                                  fontFamily: 'AirbnbCereal',
                                                  fontSize: 10,
                                                  color: Color(0xff4F4F4F),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                '12 participants',
                                                style: TextStyle(
                                                  fontFamily: 'AirbnbCereal',
                                                  fontSize: 10,
                                                  color: Color(0xff4F4F4F),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8),
                                              child: Center(
                                                child: Container(
                                                  height: 25.0,
                                                  width: 50,
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
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    child: Ink(
                                                      decoration: BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xff8301BC),
                                                              Color(0xffD2286A)
                                                            ],
                                                            begin: Alignment
                                                                .centerLeft,
                                                            end: Alignment
                                                                .centerRight,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0)),
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                                maxWidth: 271.0,
                                                                minHeight:
                                                                    99.0),
                                                        alignment:
                                                            Alignment.center,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Participer',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'AirbnbCereal',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 8,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
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
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(size.width / 2, 0) // point p1
      ..lineTo(0, size.height / 3) // point p2
      ..lineTo(size.width, size.height / 3)
      ..lineTo(size.width / 2, 0) // point p3
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
