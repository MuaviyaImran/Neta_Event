// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:uitest/main.dart';

class LoggedInUserProfile extends StatefulWidget {
  const LoggedInUserProfile({Key? key}) : super(key: key);

  @override
  State<LoggedInUserProfile> createState() => _LoggedInUserProfileState();
}

class _LoggedInUserProfileState extends State<LoggedInUserProfile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(
                fontFamily: 'AirbnbCereal',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/1.png',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Hamadoun Yara",
                    style: TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Ayoh... Garde tes données en sécurité, vous pouvez les changer à tout moment",
                    style: TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                    child: DefaultTabController(
                        length: 2, // length of tabs
                        initialIndex: 0,
                        child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              TabBar(
                                indicatorPadding: EdgeInsets.all(0.0),
                                indicatorWeight: 4.0,
                                labelPadding:
                                    EdgeInsets.only(left: 0.0, right: 0.0),
                                indicator: ShapeDecoration(
                                    shape: UnderlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                      ),
                                    ),
                                    gradient: LinearGradient(colors: [
                                      Color(0xff8301BC),
                                      Color(0xffD2286A)
                                    ])),
                                unselectedLabelColor: Colors.grey,
                                tabs: [
                                  Tab(text: 'ADD AGENT'),
                                  Tab(text: 'AGENT'),
                                ],
                              ),
                              Container(
                                  height: size.height, //height of TabBarView
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                          top: BorderSide(
                                              color: Colors.white,
                                              width: 0.5))),
                                  child: TabBarView(children: <Widget>[
                                    Tab1(),
                                    Tab2(),
                                  ]))
                            ])),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  final _formKey = GlobalKey<FormState>();
  int currentPage = 0;
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        currentPage == 0
            ? Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (currentPage != 0) {
                          setState(() {
                            currentPage = currentPage - 1;
                            print(currentPage);
                          });
                        }
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xff8301BC), Color(0xffD2286A)],
                              )),
                          child: CircleAvatar(
                              child: Text('1',
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              backgroundColor: Colors.transparent)),
                    ),
                    GradientText(
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontWeight: FontWeight.w800),
                      '  -------  ',
                      colors: [Color(0xff8301BC), Color(0xffD2286A)],
                    ),
                    InkWell(
                      onTap: () {
                        if (currentPage != 1) {
                          setState(() {
                            currentPage = currentPage + 1;
                            print(currentPage);
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xffD2286A),
                              width: 2,
                              style: BorderStyle.solid),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                            child: Text(
                              '2',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            backgroundColor: Colors.transparent),
                      ),
                    )
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (currentPage != 0) {
                          setState(() {
                            currentPage = currentPage - 1;
                            print(currentPage);
                          });
                        }
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xffD2286A),
                                width: 2,
                                style: BorderStyle.solid),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                              child: Text('1',
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              backgroundColor: Colors.transparent)),
                    ),
                    GradientText(
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontWeight: FontWeight.w800),
                      '  -------  ',
                      colors: [Color(0xff8301BC), Color(0xffD2286A)],
                    ),
                    InkWell(
                      onTap: () {
                        if (currentPage != 1) {
                          setState(() {
                            currentPage = currentPage + 1;
                            print(currentPage);
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Color(0xff8301BC), Color(0xffD2286A)],
                            )),
                        child: CircleAvatar(
                            child: Text(
                              '2',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            backgroundColor: Colors.transparent),
                      ),
                    )
                  ],
                ),
              ),
        Form(
            key: _formKey,
            child: Column(
              children: [
                currentPage == 0
                    ? Container(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  labelText: "Hamadoun Yara",
                                  hintText: "Hamadoun Yara",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.mail),
                                  labelText: "abc@email.com",
                                  hintText: "abc@email.com",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.location_on),
                                  labelText: "Lorem espium antonicu pirium",
                                  hintText: "Lorem espium antonicu pirium",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.chat),
                                  labelText: "+99 999 999 999 9",
                                  hintText: "+99 999 999 999 9",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                obscureText: !_passwordVisible,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Theme.of(context).primaryColorDark,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  prefixIcon: Icon(Icons.lock_outlined),
                                  labelText: "Password",
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
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
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Center(
                                child: Container(
                                  height: 58.0,
                                  child: RaisedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             EventDetailScreen()));
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(80.0)),
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
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      child: Container(
                                        constraints: BoxConstraints(
                                            maxWidth: 185.0, minHeight: 58.0),
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Appliquer'.toUpperCase(),
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
                      )
                    : Container(
                        child: Column(
                        children: [
                          Card(
                            color: Colors.grey[50],
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            shadowColor: Colors.grey,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/gallery.png',
                                      height: 90,
                                      width: 90,
                                    ),
                                    Text(
                                      "De la gallerie",
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            margin: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                          ),
                          Card(
                            color: Colors.grey[50],
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            shadowColor: Colors.grey,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/camera.png',
                                      height: 100,
                                      width: 100,
                                    ),
                                    Text(
                                      "Prendre une photo",
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            margin: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Center(
                              child: Container(
                                height: 58.0,
                                child: RaisedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             EventDetailScreen()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
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
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 185.0, minHeight: 58.0),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Appliquer'.toUpperCase(),
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
                      ))
              ],
            ))
      ],
    ));
  }
}

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Column(
            children: [
              Image.asset(
                "assets/p.png",
              ),
              Text(
                "Merci à tous pour la co...",
                style: TextStyle(
                    fontFamily: 'AirbnbCereal',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Star 1.png'),
                      Image.asset('assets/Star 1.png'),
                      Image.asset('assets/Star 1.png'),
                      Image.asset('assets/Star 1.png'),
                      Image.asset('assets/Star 5.png'),
                    ],
                  ),
                  Spacer(),
                  Text("500 personnes",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 12,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("36 Guild Street, Bamako",
                      style: TextStyle(
                          color: Color(0xff2B2849),
                          fontFamily: 'AirbnbCereal',
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff8301BC), Color(0xffD2286A)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 271.0, minHeight: 99.0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Appliquer'.toUpperCase(),
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
    );
  }
}
