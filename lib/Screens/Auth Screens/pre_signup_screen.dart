// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:neta_event/Screens/Auth%20Screens/register.dart';
import 'package:neta_event/utils/outlined_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PreSignUpScreen extends StatefulWidget {
  const PreSignUpScreen({Key? key}) : super(key: key);

  @override
  State<PreSignUpScreen> createState() => _PreSignUpScreenState();
}

class _PreSignUpScreenState extends State<PreSignUpScreen> {
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  String userCat = '';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showInSnackBar(String value) {
    _scaffoldKey.currentState?.showSnackBar(new SnackBar(
      backgroundColor: Colors.white,
      content: new GradientText(
          colors: [Color(0xff8301BC), Color(0xffD2286A)],
          value,
          style: TextStyle(
              color: Color(0xff8301BC),
              fontFamily: 'AirbnbCereal',
              fontSize: 16,
              fontWeight: FontWeight.w500)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "S’inscrire",
                    style: TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: selected1
                          ? Container(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xff8301BC),
                                      Color(0xffD2286A)
                                    ]),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        selected1 = false;
                                        selected2 = false;
                                        selected3 = false;
                                        print(selected1);
                                      });
                                    },
                                    child: Text("CLIENT",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'AirbnbCereal',
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ),
                            )
                          : MyOutlinedButton(
                              onPressed: () {
                                setState(() {
                                  selected1 = true;
                                  selected2 = false;
                                  selected3 = false;
                                  userCat = 'client';
                                  print(selected1);
                                });
                              },
                              gradient: LinearGradient(
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                              child: GradientText(
                                'CLIENT',
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w500),
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                            ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: selected2
                          ? Container(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xff8301BC),
                                      Color(0xffD2286A)
                                    ]),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        selected2 = false;
                                        selected1 = false;
                                        selected3 = false;
                                        print(selected2);
                                      });
                                    },
                                    child: Text("EVENT\nOWNER",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'AirbnbCereal',
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ),
                            )
                          : MyOutlinedButton(
                              onPressed: () {
                                setState(() {
                                  selected2 = true;
                                  selected1 = false;
                                  selected3 = false;
                                  userCat = 'event_owner';
                                  print(selected2);
                                });
                              },
                              gradient: LinearGradient(
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                              child: GradientText(
                                textAlign: TextAlign.center,
                                'EVENT\nOWNER',
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w500),
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                            ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: selected3
                          ? Container(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xff8301BC),
                                      Color(0xffD2286A)
                                    ]),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        selected3 = false;
                                        selected1 = false;
                                        selected2 = false;
                                        print(selected3);
                                      });
                                    },
                                    child: Text("COMPANY",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'AirbnbCereal',
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ),
                            )
                          : MyOutlinedButton(
                              onPressed: () {
                                setState(() {
                                  selected3 = true;
                                  selected1 = false;
                                  selected2 = false;
                                  userCat = 'company';
                                  print(selected3);
                                });
                              },
                              gradient: LinearGradient(
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                              child: GradientText(
                                'COMPANY',
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w500),
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              ),
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            print(userCat);
                            if (userCat != '') {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register(
                                          user: userCat,
                                        )),
                              );
                            } else {
                              showInSnackBar(
                                  'Please Select Category to Continue..');
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff8301BC),
                                    Color(0xffD2286A)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 271.0, minHeight: 99.0),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'VALIDATE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
