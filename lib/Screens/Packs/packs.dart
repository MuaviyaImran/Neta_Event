// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Donation/donation_detail_screen.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class Packs extends StatefulWidget {
  const Packs({Key? key}) : super(key: key);

  @override
  State<Packs> createState() => _PacksState();
}

class _PacksState extends State<Packs> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
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
                                  'Publicité',
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                        height: size.height,
                        child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 20,
                            );
                          },
                          shrinkWrap: false,
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: 300,
                              width: size.width,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        height: 265,
                                        width: size.width,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Positioned(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                                'assets/Rectangle 4291.png'),
                                            Positioned(
                                                top: 21,
                                                left: 50.5,
                                                child: Text(
                                                  'Pack Bronze',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'AirbnbCereal',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ))
                                          ],
                                        ),
                                      ],
                                    )),
                                    Positioned(
                                      left: size.width / 3.5,
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
                                        child: Image.asset(
                                            'assets/Vector 21.png')),
                                    Positioned(
                                      left: size.width / 5,
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
                                      left: size.width / 5,
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
                                      left: size.width / 3.5,
                                      top: 250,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DonationPayOptions()),
                                          );
                                        },
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
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomTabBar(currentIndex: 1));
  }
}
