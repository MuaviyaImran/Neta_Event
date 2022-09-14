// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neta_event/Screens/Events/event_detail_screen.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class EventTicketPayScreen extends StatefulWidget {
  const EventTicketPayScreen({Key? key}) : super(key: key);

  @override
  State<EventTicketPayScreen> createState() => _EventTicketPayScreenState();
}

class _EventTicketPayScreenState extends State<EventTicketPayScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomTabBar(currentIndex: 1),
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
                              'Payer',
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
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )),
                          height: 100,
                          width: 222,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 90,
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                          color: Color.fromARGB(
                                              255, 162, 212, 164),
                                          width: 40,
                                          height: 40,
                                          'assets/car-seat-icon.svg',
                                          semanticsLabel: 'Acme Logo'),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text("Numéro\n12",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                          color: Color.fromARGB(
                                              255, 162, 212, 164),
                                          width: 40,
                                          height: 40,
                                          'assets/car-seat-icon.svg',
                                          semanticsLabel: 'Acme Logo'),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text("Numéro\n29",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                          color: Color.fromARGB(
                                              255, 162, 212, 164),
                                          width: 40,
                                          height: 40,
                                          'assets/car-seat-icon.svg',
                                          semanticsLabel: 'Acme Logo'),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text("Numéro\n45",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 73,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/paypal.png",
                            ),
                            Spacer(),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 73,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/visa.png",
                            ),
                            Spacer(),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 73,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/payoneer.png",
                            ),
                            Spacer(),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 73,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/visa.png",
                            ),
                            Spacer(),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Votre collecte de remise ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Image.asset("assets/Ellipse 216.png"),
                            Positioned(
                              top: 35,
                              left: 30,
                              child: Text("15\%",
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 45.0,
                        width: 70,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff8301BC),
                                    Color(0xffD2286A)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 70.0, minHeight: 45.0),
                              alignment: Alignment.center,
                              child: Text("+1% ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'AirbnbCereal',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45.0,
                        width: 70,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff8301BC),
                                    Color(0xffD2286A)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 70.0, minHeight: 45.0),
                              alignment: Alignment.center,
                              child: Text("-1% ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'AirbnbCereal',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45.0,
                        width: 117,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff8301BC),
                                    Color(0xffD2286A)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 117.0, minHeight: 45.0),
                              alignment: Alignment.center,
                              child: Text("Tout le pourcentage",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'AirbnbCereal',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 140,
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff8301BC), Color(0xffD2286A)],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                                Text(
                                  '150\$',
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 0),
                            child: Container(
                              height: 56.0,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EventDetailScreen()),
                                  );
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
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: size.width, minHeight: 56.0),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GradientText(
                                          colors: [
                                            Color(0xff8301BC),
                                            Color(0xffD2286A)
                                          ],
                                          'Place My Order',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
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
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
