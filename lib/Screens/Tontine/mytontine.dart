// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neta_event/Screens/Tontine/add_tontine.dart';
import 'package:neta_event/Screens/Tontine/single_tontine_screen.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../Reset Password/forget_password_screen.dart';

class MyTontine extends StatefulWidget {
  const MyTontine({Key? key}) : super(key: key);

  @override
  State<MyTontine> createState() => _MyTontineState();
}

class _MyTontineState extends State<MyTontine> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffD2286A),
        child: Text("ADD NEW",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'AirbnbCereal', fontWeight: FontWeight.w600)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTontine()),
          );
        },
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomTabBar(currentIndex: 2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                        Text("Invitations",
                            style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          children: [
                            //aaap
                            ToggleSwitch(
                              minWidth: 20.0,
                              minHeight: 20,
                              cornerRadius: 20.0,
                              activeBgColors: [
                                [Colors.pink],
                                [Colors.pink]
                              ],
                              initialLabelIndex: 1,
                              activeFgColor: Colors.white,
                              inactiveBgColor: Colors.grey,
                              inactiveFgColor: Colors.white,
                              totalSwitches: 2,
                              radiusStyle: true,
                              onToggle: (index) {
                                print('switched to: $index');
                                setState(() {
                                  currentPage = index!;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 15, right: 15),
                child: Container(
                  height: 37,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                    enabled: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      isDense: true,
                      hintStyle: TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 21.0,
                        color: Colors.grey,
                      ),
                      hintText: "Search...",
                      prefixIcon: GradientIcon(
                        Icons.search_sharp,
                        25.0,
                        LinearGradient(
                          colors: <Color>[Color(0xff8301BC), Color(0xffD2286A)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(5),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ),
              currentPage == 0
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height,
                        child: ListView.builder(
                          shrinkWrap: true,
                          reverse: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) =>
                              InkWell(
                            onTap: () {
                              print("Tontine Pressed");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SingleTontineScreen()),
                              );
                            },
                            child: Card(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 20,
                                    right: 20,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffD69AD3)),
                                                  child: CircleAvatar(
                                                      child: Text('500\$',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'AirbnbCereal',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                      backgroundColor:
                                                          Colors.transparent)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 20,
                                      right: 20,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Center(
                                              child: Container(
                                                height: 23.0,
                                                width: 55,
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
                                                          BorderRadius.circular(
                                                              10.0)),
                                                  padding: EdgeInsets.all(0.0),
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
                                                                .circular(4.0)),
                                                    child: Container(
                                                      constraints:
                                                          BoxConstraints(
                                                              maxWidth: 55.0,
                                                              minHeight: 23.0),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Payer',
                                                            textAlign: TextAlign
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
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 95,
                                        color: Colors.white,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, left: 0),
                                              child: Container(
                                                child: Container(
                                                  height: 90,
                                                  width: 95,
                                                  color: Colors.transparent,
                                                  child: Column(children: [
                                                    Image.asset(
                                                      "assets/4.png",
                                                      width: 95,
                                                      height: 90,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ),
                                            ClipPath(
                                                clipper: TriangleClipper(),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                          colors: [
                                                        Color(0xff8301BC),
                                                        Color(0xffD2286A)
                                                      ])),
                                                  height: 92,
                                                  width: 95,
                                                )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text("Mariage",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffE28541),
                                                                fontFamily:
                                                                    'AirbnbCereal',
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                      ],
                                                    ),
                                                    Text(
                                                        "Lorem espium anturium\nkalui apolika",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Chaque trimestre",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    Text("12 participants",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff4F4F4F),
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700))
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height,
                        child: ListView.builder(
                          shrinkWrap: true,
                          reverse: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) =>
                              InkWell(
                            onTap: () {
                              print("Tontine Pressed");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SingleTontineScreen()),
                              );
                            },
                            child: Card(
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 20,
                                    right: 20,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffD69AD3)),
                                                  child: CircleAvatar(
                                                      child: Text('500\$',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'AirbnbCereal',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                      backgroundColor:
                                                          Colors.transparent)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 20,
                                      right: 0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Center(
                                              child: Container(
                                                height: 23.0,
                                                width: 55,
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
                                                          BorderRadius.circular(
                                                              10.0)),
                                                  padding: EdgeInsets.all(0.0),
                                                  child: Ink(
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color(0xff6CC138),
                                                            Color(0xff469715)
                                                          ],
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .centerRight,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0)),
                                                    child: Container(
                                                      constraints:
                                                          BoxConstraints(
                                                              maxWidth: 55.0,
                                                              minHeight: 23.0),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Accepter',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'AirbnbCereal',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Center(
                                              child: Container(
                                                height: 23.0,
                                                width: 55,
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
                                                          BorderRadius.circular(
                                                              10.0)),
                                                  padding: EdgeInsets.all(0.0),
                                                  child: Ink(
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                          colors: [
                                                            Color(0xffFD2103),
                                                            Color(0xffC6756F)
                                                          ],
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0)),
                                                    child: Container(
                                                      constraints:
                                                          BoxConstraints(
                                                              maxWidth: 55.0,
                                                              minHeight: 23.0),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Refuser',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'AirbnbCereal',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
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
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 120,
                                        width: 95,
                                        color: Colors.white,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, left: 0),
                                              child: Container(
                                                child: Container(
                                                  height: 90,
                                                  width: 95,
                                                  color: Colors.transparent,
                                                  child: Column(children: [
                                                    Image.asset(
                                                      "assets/4.png",
                                                      width: 95,
                                                      height: 90,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ),
                                            ClipPath(
                                                clipper: TriangleClipper(),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                          colors: [
                                                        Color(0xff8301BC),
                                                        Color(0xffD2286A)
                                                      ])),
                                                  height: 92,
                                                  width: 95,
                                                )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text("Mariage",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffE28541),
                                                                fontFamily:
                                                                    'AirbnbCereal',
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                      ],
                                                    ),
                                                    Text(
                                                        "Lorem espium anturium\nkalui apolika",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Chaque trimestre",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    Text("12 participants",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff4F4F4F),
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700))
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
