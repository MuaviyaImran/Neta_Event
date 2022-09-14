// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Reset%20Password/forget_password_screen.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AddTontine extends StatefulWidget {
  const AddTontine({Key? key}) : super(key: key);

  @override
  State<AddTontine> createState() => _AddTontineState();
}

class _AddTontineState extends State<AddTontine> {
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
    double innerSpacingDivider = 10;
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
                                'Add Tontinet',
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
                                      backgroundColor: Colors.transparent,
                                      child: Text('1',
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400)))),
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
                                    backgroundColor: Colors.transparent,
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    )),
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
                                      backgroundColor: Colors.transparent,
                                      child: Text('1',
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400)))),
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
                                    backgroundColor: Colors.transparent,
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    )),
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
                                            'Nom de la tontine',
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
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Montant régulier',
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0.0),
                                      child: Card(
                                        color: Colors.grey[50],
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        shadowColor: Colors.grey,
                                        margin: EdgeInsets.only(
                                            left: 20.0, right: 20.0, top: 20.0),
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
                                                      fontFamily:
                                                          'AirbnbCereal',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            ),
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
                                            'Type',
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
                                            'Persons',
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
                                      padding: const EdgeInsets.only(top: 0.0),
                                      child: Slider(
                                        min: 1,
                                        max: 30,
                                        label: innerSpacingDivider
                                            .toStringAsFixed(2),
                                        value: innerSpacingDivider,
                                        onChanged: (newVal) => setState(
                                            () => innerSpacingDivider = newVal),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Periode',
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 7),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 33.0,
                                            child: RaisedButton(
                                              onPressed: () {
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
                                                          8.0)),
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
                                                            8.0)),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth: 91.0,
                                                      minHeight: 33.0),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Par semaine',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            color: Colors.white,
                                                            fontSize: 12,
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
                                          Container(
                                            height: 33.0,
                                            child: RaisedButton(
                                              onPressed: () {
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
                                                          8.0)),
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
                                                            8.0)),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth: 91.0,
                                                      minHeight: 33.0),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Par semaine',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            color: Colors.white,
                                                            fontSize: 12,
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
                                          Container(
                                            height: 33.0,
                                            child: RaisedButton(
                                              onPressed: () {
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
                                                          8.0)),
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
                                                            8.0)),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth: 91.0,
                                                      minHeight: 33.0),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Par semaine',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            color: Colors.white,
                                                            fontSize: 12,
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
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 7),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 33.0,
                                            child: RaisedButton(
                                              onPressed: () {
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
                                                          8.0)),
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
                                                            8.0)),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth: 91.0,
                                                      minHeight: 33.0),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Par semaine',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            color: Colors.white,
                                                            fontSize: 12,
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
                                          Container(
                                            height: 33.0,
                                            child: RaisedButton(
                                              onPressed: () {
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
                                                          8.0)),
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
                                                            8.0)),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth: 91.0,
                                                      minHeight: 33.0),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Par semaine',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            color: Colors.white,
                                                            fontSize: 12,
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
                                          Container(
                                            height: 33.0,
                                            child: RaisedButton(
                                              onPressed: () {
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
                                                          8.0)),
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
                                                            8.0)),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth: 91.0,
                                                      minHeight: 33.0),
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Par semaine',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'AirbnbCereal',
                                                            color: Colors.white,
                                                            fontSize: 12,
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
                                        ],
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
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Nombre de tickets',
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
                                          hintText: "1000 tickets",
                                          labelText: '1000 tickets',
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

                                    //

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
                            : Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Container(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          height: 73,
                                          width: size.width,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF6F6F6),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 13.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  "assets/paypal.png",
                                                ),
                                                Spacer(),
                                                Text(
                                                  '2121 6352 8465 ****',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'AirbnbCereal',
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
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
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 13.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  "assets/visa.png",
                                                ),
                                                Spacer(),
                                                Text(
                                                  '2121 6352 8465 ****',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'AirbnbCereal',
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
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
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 13.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  "assets/payoneer.png",
                                                ),
                                                Spacer(),
                                                Text(
                                                  '2121 6352 8465 ****',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'AirbnbCereal',
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
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
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 13.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  "assets/visa.png",
                                                ),
                                                Spacer(),
                                                Text(
                                                  '2121 6352 8465 ****',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'AirbnbCereal',
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Container(
                                        height: 140,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xff8301BC),
                                                Color(0xffD2286A)
                                              ],
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 13.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Total',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Spacer(),
                                                    Text(
                                                      '150\$',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5, bottom: 0),
                                                child: Container(
                                                  height: 56.0,
                                                  child: RaisedButton(
                                                    onPressed: () {
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
                                                                        40.0)),
                                                    padding:
                                                        EdgeInsets.all(0.0),
                                                    child: Ink(
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0)),
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                                maxWidth:
                                                                    size.width,
                                                                minHeight:
                                                                    56.0),
                                                        alignment:
                                                            Alignment.center,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            GradientText(
                                                              colors: [
                                                                Color(
                                                                    0xff8301BC),
                                                                Color(
                                                                    0xffD2286A)
                                                              ],
                                                              'Donate now',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'AirbnbCereal',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 14,
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                              )
                      ],
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomTabBar(currentIndex: 2));
  }
}
