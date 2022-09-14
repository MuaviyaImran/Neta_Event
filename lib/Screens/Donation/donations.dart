// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Donation/donation_detail_screen.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class Donations extends StatefulWidget {
  const Donations({Key? key}) : super(key: key);

  @override
  State<Donations> createState() => _DonationsState();
}

class _DonationsState extends State<Donations> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
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
                                'Donations',
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
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffCDCDCD),
                            border: Border.all(
                              color: Color(0xffCDCDCD),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 58,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 220.0,
                                height: 76,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    hintText: "Type Something..",
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  //controller:,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36.0,
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
                                      borderRadius: BorderRadius.circular(5.0)),
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
                                            BorderRadius.circular(5.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 90, minHeight: 36.0),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Search',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'AirbnbCereal',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 68,
                                width: 68,
                                decoration: BoxDecoration(
                                    color: Color(0xffebd7ef),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Image.asset("assets/Frame 14.png"),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text("Health",
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Color(0xff9D9D9D),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 68,
                                width: 68,
                                decoration: BoxDecoration(
                                    color: Color(0xffebd7ef),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Image.asset("assets/Frame 13.png"),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text("Education",
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Color(0xff9D9D9D),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 68,
                                width: 68,
                                decoration: BoxDecoration(
                                    color: Color(0xffebd7ef),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Image.asset("assets/Frame 12.png"),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text("Animals",
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Color(0xff9D9D9D),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 68,
                                width: 68,
                                decoration: BoxDecoration(
                                    color: Color(0xffebd7ef),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Image.asset("assets/Frame 7.png"),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text("Technology",
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Color(0xff9D9D9D),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
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
                            reverse: true,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                height: 5,
                              );
                            },
                            shrinkWrap: true,
                            itemCount: 12,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                child: InkWell(
                                  onTap: () async {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DonationDetails()),
                                    );
                                  },
                                  child: Container(
                                      width: size.width,
                                      height: 265,
                                      child: Card(
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "assets/129.png",
                                              width: size.width,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Donate for kids to their well being',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'AirbnbCereal',
                                                        color: Colors.black,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0,
                                                  left: 20,
                                                  right: 20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                            "assets/Vector1.png"),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text("Isha Foundation",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'AirbnbCereal',
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    height: 29.0,
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
                                                                          5.0)),
                                                      padding:
                                                          EdgeInsets.all(0.0),
                                                      child: Ink(
                                                        decoration:
                                                            BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0xff8301BC),
                                                                    Color(
                                                                        0xffD2286A)
                                                                  ],
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0)),
                                                        child: Container(
                                                          constraints:
                                                              BoxConstraints(
                                                                  maxWidth: 95,
                                                                  minHeight:
                                                                      29.0),
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Donate now',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'AirbnbCereal',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              )),
        ),
        bottomNavigationBar: BottomTabBar(currentIndex: 2));
  }
}
