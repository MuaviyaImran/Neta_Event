// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Events/event_detail_screen.dart';
import 'package:neta_event/Screens/Reset%20Password/forget_password_screen.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({Key? key}) : super(key: key);

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  final _formKey = GlobalKey<FormState>();
  int currentPage = 0;
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
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
                                'Add Event',
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
                currentPage == 0
                    ? Padding(
                        padding: const EdgeInsets.only(top: 40.0),
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
                                        colors: [
                                          Color(0xff8301BC),
                                          Color(0xffD2286A)
                                        ],
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
                        padding: const EdgeInsets.only(top: 40.0),
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
                                      colors: [
                                        Color(0xff8301BC),
                                        Color(0xffD2286A)
                                      ],
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
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Nom de l’évenemnt',
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "lorem espim",
                                          labelText: 'lorem espim',
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide(
                                              color: Color(0xff8301BC),
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide(
                                              color: Color(0xff8301BC),
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
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Date',
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            TextButton(
                                                child: Row(
                                                  children: [
                                                    GradientIcon(
                                                      Icons
                                                          .calendar_today_sharp,
                                                      25.0,
                                                      LinearGradient(
                                                        colors: <Color>[
                                                          Color(0xff8301BC),
                                                          Color(0xffD2286A)
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    GradientText(
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 15),
                                                      'Parcourir ce calendrier',
                                                      colors: [
                                                        Color(0xff8301BC),
                                                        Color(0xffD2286A)
                                                      ],
                                                    ),
                                                    GradientIcon(
                                                      Icons.arrow_forward_ios,
                                                      13,
                                                      LinearGradient(
                                                        colors: <Color>[
                                                          Color(0xff8301BC),
                                                          Color(0xffD2286A)
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                style: ButtonStyle(
                                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                                        EdgeInsets.symmetric(
                                                            horizontal: 15,
                                                            vertical: 5)),
                                                    foregroundColor:
                                                        MaterialStateProperty.all<
                                                            Color>(Colors.grey),
                                                    shape: MaterialStateProperty.all<
                                                            RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(8.0),
                                                            side: BorderSide(color: Colors.grey)))),
                                                onPressed: () => _selectDate(context)),
                                            SizedBox(width: 10),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Localisation',
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Container(
                                        height: 60,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Image.asset(
                                                            'assets/Rectangle 4184.png'),
                                                        Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 7.0,
                                                                    bottom: 3),
                                                            child: Image.asset(
                                                                'assets/Rectangle 4187.png'),
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 7.0),
                                                            child: GradientIcon(
                                                              Icons
                                                                  .location_on_outlined,
                                                              25.0,
                                                              LinearGradient(
                                                                colors: <Color>[
                                                                  Color(
                                                                      0xff8301BC),
                                                                  Color(
                                                                      0xffD2286A)
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      'Bamako, Mali',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: GradientIcon(
                                                  Icons.arrow_forward_ios,
                                                  13,
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
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Categories',
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: InkWell(
                                        onTap: () {
                                          print("Category Clicked");
                                        },
                                        child: Container(
                                            height: 80,
                                            child: ListView.separated(
                                              separatorBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return SizedBox(
                                                  width: 20,
                                                );
                                              },
                                              shrinkWrap: false,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 5,
                                              itemBuilder:
                                                  (BuildContext context,
                                                          int index) =>
                                                      Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 0.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                          style:
                                                              BorderStyle.solid,
                                                          color: Colors.black,
                                                          width: 2,
                                                        ),
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Colors.transparent),
                                                    child: CircleAvatar(
                                                        radius: 35,
                                                        child: Icon(
                                                          Icons
                                                              .music_note_sharp,
                                                          color: Colors.grey,
                                                          size: 35,
                                                        ),
                                                        backgroundColor: Colors
                                                            .transparent)),
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lien',
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "lorem espim",
                                          labelText: 'lorem espim',
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide(
                                              color: Color(0xff8301BC),
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide(
                                              color: Color(0xff8301BC),
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
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Publicité',
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Container(
                                        height: 60,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Image.asset(
                                                            'assets/Rectangle 4184.png'),
                                                        Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 7.0,
                                                                    bottom: 3),
                                                            child: Image.asset(
                                                                'assets/Rectangle 4187.png'),
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 3,
                                                                    left: 12.0),
                                                            child: Image.asset(
                                                                'assets/Vector (3).png'),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      'Pack gold',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: GradientIcon(
                                                  Icons.arrow_forward_ios,
                                                  13,
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
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 58.0,
                                            child: RaisedButton(
                                              onPressed: () {
                                                setState(() {
                                                  currentPage = currentPage + 1;
                                                  print(currentPage);
                                                });
                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //         builder: (context) =>
                                                //             AddEventScreen()));
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
                                                          40.0)),
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
                                                        BorderRadius.circular(
                                                            15.0)),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth: 185.0,
                                                      minHeight: 58.0),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'APPLIQUER',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            color: Colors.white,
                                                            fontSize: 16,
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(
                                child: Column(
                                children: [
                                  Container(
                                      child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'choisir une photo de l’évenemnt',
                                              style: TextStyle(
                                                  fontFamily: 'AirbnbCereal',
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                                  Card(
                                    color: Colors.grey[50],
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    shadowColor: Colors.grey,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
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
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    shadowColor: Colors.grey,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
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
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        EventDetailScreen()));
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
                                                    BorderRadius.circular(
                                                        15.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 185.0,
                                                  minHeight: 58.0),
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Appliquer'.toUpperCase(),
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'AirbnbCereal',
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
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
            ),
          ),
        ),
        bottomNavigationBar: BottomTabBar(currentIndex: 1));
  }
}
