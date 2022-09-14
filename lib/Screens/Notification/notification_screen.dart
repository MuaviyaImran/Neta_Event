// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Notification/notification_screen_empty.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var notiList = ['a'];
    if (notiList.isEmpty) {
      return NotificationEmptyScreen();
    } else {
      return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
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
                    Spacer(),
                    Container(
                      height: 33.0,
                      child: RaisedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePageClient()),
                          // );
                          // if (_formKey.currentState!.validate()) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //         content: Text('Processing Data')),
                          //   );
                          // }
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Container(
                            constraints:
                                BoxConstraints(maxWidth: 89.0, minHeight: 33.0),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'DELETE ALL',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: size.height,
                    child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 5,
                          );
                        },
                        shrinkWrap: true,
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                            child: InkWell(
                              onLongPress: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) => Container(
                                          height: 200,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                            ),
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 60,
                                                      height: 60,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        "assets/Ellipse 58.png",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Ronald C. Kinch ',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color:
                                                              Color(0xff060518),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Text(
                                                      'Like you events',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color:
                                                              Color(0xff060518),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '1 hr ago',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color:
                                                              Color(0xff060518),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0),
                                                child: Container(
                                                  height: 48.0,
                                                  child: RaisedButton(
                                                    onPressed: () {
                                                      // Navigator.push(
                                                      //   context,
                                                      //   MaterialPageRoute(
                                                      //       builder: (context) => HomePageClient()),
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
                                                                        15.0)),
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
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0)),
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                                maxWidth: 182.0,
                                                                minHeight:
                                                                    42.0),
                                                        alignment:
                                                            Alignment.center,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Delete all',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'AirbnbCereal',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ));
                              },
                              onTap: () async {
                                // await Navigator.push(
                                //   context,
                                //   page();
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 8, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 60,
                                                height: 60,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  "assets/Ellipse 58.png",
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text('Ronald C. Kinch',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.7, 0),
                                                      child: Text(
                                                        '2hr Ago',
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 4, 0),
                                                      child: Text(
                                                        'Lorem espium kolurm andir',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ],
          )),
          bottomNavigationBar: BottomTabBar(currentIndex: 2));
    }
  }
}
