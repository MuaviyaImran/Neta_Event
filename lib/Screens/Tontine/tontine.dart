// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Reset%20Password/forget_password_screen.dart';
import 'package:neta_event/Screens/Tontine/mytontine.dart';
import 'package:neta_event/Screens/Tontine/single_tontine_screen.dart';

import 'package:neta_event/main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

import '../../home_page.dart';

class Tontine extends StatefulWidget {
  const Tontine({Key? key}) : super(key: key);

  @override
  State<Tontine> createState() => _TontineState();
}

class _TontineState extends State<Tontine> {
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
                              'Tontine',
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyTontine()),
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
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff8301BC),
                                    Color(0xffD2286A)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 89.0, minHeight: 33.0),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Mes Tontines',
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
                            colors: <Color>[
                              Color(0xff8301BC),
                              Color(0xffD2286A)
                            ],
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height,
                    child: ListView.builder(
                      shrinkWrap: true,
                      reverse: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          print("Tontine Pressed");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleTontineScreen()),
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
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xffD69AD3)),
                                              child: CircleAvatar(
                                                  child: Text('500\$',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w700)),
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
                                    mainAxisAlignment: MainAxisAlignment.end,
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
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xff8301BC),
                                                        Color(0xffD2286A)
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0)),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth: 55.0,
                                                      minHeight: 23.0),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Participer',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            color: Colors.white,
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
                                          padding:
                                              EdgeInsets.only(top: 25, left: 0),
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
                                                            FontWeight.w700)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Chaque trimestre",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'AirbnbCereal',
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("12 participants",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff4F4F4F),
                                                        fontFamily:
                                                            'AirbnbCereal',
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w700))
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
        bottomNavigationBar: BottomTabBar(currentIndex: 2));
  }
}
