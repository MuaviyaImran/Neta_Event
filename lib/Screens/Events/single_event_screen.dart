// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, deprecated_member_use
import 'package:neta_event/home_page.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neta_event/Screens/Events/add_event_screen.dart';
import 'package:neta_event/Screens/Events/event_ticket_pay_screen.dart';
import 'package:neta_event/Screens/Reset%20Password/forget_password_screen.dart';
import 'package:neta_event/main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SingleEventScreen extends StatefulWidget {
  const SingleEventScreen({Key? key}) : super(key: key);

  @override
  State<SingleEventScreen> createState() => _SingleEventScreenState();
}

class _SingleEventScreenState extends State<SingleEventScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    DateTime selectedDate = DateTime.now();
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });
      }
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: SizedBox(
                  width: size.width,
                  child: Image.asset(
                    'assets/130.png',
                    width: size.width,
                  ),
                )),
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
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Event Details',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    color: Colors.white,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 5.0,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                            )
                          ],
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      height: 60,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 80,
                                child: Stack(
                                  children: [
                                    Image.asset("assets/Oval Copy 4.png"),
                                    Positioned(
                                        left: 20,
                                        child: Image.asset(
                                            "assets/Oval Copy 4.png")),
                                    Positioned(
                                        left: 40,
                                        child: Image.asset(
                                            "assets/Oval Copy 4.png")),
                                  ],
                                )),
                            GradientText("+20 Persons",
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SizedBox(
                                height: 28.0,
                                width: 67,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 67.0, minHeight: 3.0),
                                      alignment: Alignment.center,
                                      child: Text("Favoris",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'AirbnbCereal',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text("Merci à tous pour la confirmation.",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 35,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('assets/Rectangle 4184.png'),
                                    Positioned(
                                      top: 7,
                                      left: 7,
                                      child: GradientIcon(
                                        Icons.calendar_today_sharp,
                                        25.0,
                                        LinearGradient(
                                          colors: <Color>[
                                            Color(0xff8301BC),
                                            Color(0xffD2286A)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                      '14 Decembre, 2021',
                                    ),
                                    Text(
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      'Lundi, 2:00PM - 4:00PM',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('assets/Rectangle 4184.png'),
                                    Positioned(
                                      top: 7,
                                      left: 7,
                                      child: GradientIcon(
                                        Icons.location_on,
                                        25.0,
                                        LinearGradient(
                                          colors: <Color>[
                                            Color(0xff8301BC),
                                            Color(0xffD2286A)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                      'Gala Convention Center',
                                    ),
                                    Text(
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                      '36 Guild Street Mali',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Image.asset('assets/image 70.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                    'Saif eddine',
                                  ),
                                  Text(
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                    'Lorem espium',
                                  ),
                                ],
                              ),
                            ],
                          )),
                          Spacer(),
                          SizedBox(
                            height: 28.0,
                            width: 65,
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                    color: Color(0xffebd7ef),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 65.0, minHeight: 3.0),
                                  alignment: Alignment.center,
                                  child: GradientText("Découvrir",
                                      colors: [
                                        Color(0xff8301BC),
                                        Color(0xffD2286A)
                                      ],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'AirbnbCereal',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Text("A propos",
                            style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mauris, egestas nunc tellus nunc viverra. ",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                        height: 281,
                        width: size.width,
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 13),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 13),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 13),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 13),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        // color:
                                        //     Color.fromARGB(255, 162, 212, 164),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                    SvgPicture.asset(
                                        color:
                                            Color.fromARGB(255, 245, 188, 102),
                                        width: 40,
                                        height: 40,
                                        'assets/car-seat-icon.svg',
                                        semanticsLabel: 'Acme Logo'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text("3 Seats Selected",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 18,
                            fontWeight: FontWeight.w700)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Free",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color.fromARGB(255, 245, 188, 102),
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Reserved",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Color.fromARGB(255, 157, 243, 160),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Selected",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 78, 78, 78),
                                    width: 2.0),
                                color: Color.fromARGB(255, 78, 78, 78),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                            height: 100,
                            width: 222,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                    padding: const EdgeInsets.only(top: 15.0),
                    child: InkWell(
                      child: Container(
                          height: 48,
                          width: 245,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff8301BC), width: 2.0),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Row(
                              children: [
                                Text("2 tickets",
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Spacer(),
                                Stack(
                                  children: [
                                    Image.asset("assets/Rectangle 418.png"),
                                    Positioned(
                                        top: 7,
                                        left: 7,
                                        child: Image.asset("assets/+.png")),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 30),
                    child: Row(
                      children: [
                        Text('Vip Tickets',
                            style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        SizedBox(
                          width: 7,
                        ),
                        ToggleSwitch(
                          minWidth: 10.0,
                          minHeight: 10,
                          cornerRadius: 10.0,
                          activeBgColors: [
                            [Colors.grey],
                            [Colors.grey]
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Color(0xffD2286A),
                          inactiveFgColor: Colors.white,
                          initialLabelIndex: 1,
                          totalSwitches: 2,
                          radiusStyle: true,
                          onToggle: (index) {
                            print('switched to: $index');
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SizedBox(
                      height: 58.0,
                      width: 271,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventTicketPayScreen()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 271.0, minHeight: 58.0),
                            alignment: Alignment.center,
                            child: Text("Buy 2 Tickets".toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        )),
        bottomNavigationBar: BottomTabBar(currentIndex: 1));
  }
}
