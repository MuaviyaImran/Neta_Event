// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Events/add_event_screen.dart';
import 'package:neta_event/Screens/Events/single_event_screen.dart';
import 'package:neta_event/Screens/Reset%20Password/forget_password_screen.dart';
import 'package:neta_event/main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class EventDetailScreen extends StatefulWidget {
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  void eventSearchPopUp(context, size) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              elevation: 0,
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              content: Builder(
                builder: (context) {
                  return Container(
                    width: size.width * 0.85,
                    height: size.height * 0.5,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/126.png",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text('Merci à tous pour la confirmation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                child: RaisedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => AddEventScreen()));
                                    // if (_formKey.currentState!.validate()) {
                                    //   ScaffoldMessenger.of(context).showSnackBar(
                                    //     const SnackBar(
                                    //         content: Text('Processing Data')),
                                    //   );
                                    // }
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(40.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 115.0, minHeight: 40),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'DELETE',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                child: RaisedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => AddEventScreen()));
                                    // if (_formKey.currentState!.validate()) {
                                    //   ScaffoldMessenger.of(context).showSnackBar(
                                    //     const SnackBar(
                                    //         content: Text('Processing Data')),
                                    //   );
                                    // }
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(40.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 115.0, minHeight: 40.0),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'MODIFY',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 16,
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
                        )
                      ],
                    ),
                  );
                },
              ),
            ));
  }

  final double _min = 0;
  final double _max = 100;
  SfRangeValues _values = const SfRangeValues(40.0, 60.0);
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
      bottomNavigationBar: BottomTabBar(currentIndex: 1),
      body: SingleChildScrollView(
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
                          'Event',
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
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    height: 42.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddEventScreen()));
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
                              BoxConstraints(maxWidth: 122.0, minHeight: 42.0),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ADD EVENT',
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
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      color: Color(0xffCDCDCD),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 58,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GradientIcon(
                        Icons.search,
                        25.0,
                        LinearGradient(
                          colors: <Color>[Color(0xff8301BC), Color(0xffD2286A)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      SizedBox(
                        width: 210.0,
                        height: 76,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: "Search..",
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
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 33.0,
                          width: 75,
                          child: RaisedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) {
                                    return FractionallySizedBox(
                                      heightFactor: 0.9,
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: SingleChildScrollView(
                                            child: Column(children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Filters",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'AirbnbCereal',
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15.0),
                                                child: Container(
                                                  height: 115,
                                                  child: ListView.separated(
                                                    separatorBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return SizedBox(
                                                        width: 10,
                                                      );
                                                    },
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount: 5,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                                int index) =>
                                                            Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 0.0),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        style: BorderStyle
                                                                            .solid,
                                                                        color: Colors
                                                                            .black,
                                                                        width:
                                                                            2,
                                                                      ),
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .transparent),
                                                              child:
                                                                  CircleAvatar(
                                                                      radius:
                                                                          35,
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .music_note_sharp,
                                                                        color: Colors
                                                                            .grey,
                                                                        size:
                                                                            35,
                                                                      ),
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent)),
                                                          Text("Sports",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'AirbnbCereal',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400)),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Temps & Date",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 42.0,
                                                      child: RaisedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          AddEventScreen()));
                                                          // if (_formKey.currentState!.validate()) {
                                                          //   ScaffoldMessenger.of(context).showSnackBar(
                                                          //     const SnackBar(
                                                          //         content: Text('Processing Data')),
                                                          //   );
                                                          // }
                                                        },
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                width: 1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
                                                        padding:
                                                            EdgeInsets.all(0.0),
                                                        child: Ink(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0)),
                                                          child: Container(
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        110.0,
                                                                    minHeight:
                                                                        42.0),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Cette semaine',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'AirbnbCereal',
                                                                      color: Color(
                                                                          0xff807A7A),
                                                                      fontSize:
                                                                          15,
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
                                                      height: 42.0,
                                                      child: RaisedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          AddEventScreen()));
                                                          // if (_formKey.currentState!.validate()) {
                                                          //   ScaffoldMessenger.of(context).showSnackBar(
                                                          //     const SnackBar(
                                                          //         content: Text('Processing Data')),
                                                          //   );
                                                          // }
                                                        },
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
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
                                                                              10.0)),
                                                          child: Container(
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        110.0,
                                                                    minHeight:
                                                                        42.0),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Demain',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'AirbnbCereal',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          15,
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
                                                      height: 42.0,
                                                      child: RaisedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          AddEventScreen()));
                                                          // if (_formKey.currentState!.validate()) {
                                                          //   ScaffoldMessenger.of(context).showSnackBar(
                                                          //     const SnackBar(
                                                          //         content: Text('Processing Data')),
                                                          //   );
                                                          // }
                                                        },
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                width: 1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
                                                        padding:
                                                            EdgeInsets.all(0.0),
                                                        child: Ink(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0)),
                                                          child: Container(
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        110.0,
                                                                    minHeight:
                                                                        42.0),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Aujourd’hui',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'AirbnbCereal',
                                                                      color: Color(
                                                                          0xff807A7A),
                                                                      fontSize:
                                                                          15,
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
                                                padding: const EdgeInsets.only(
                                                    top: 15.0),
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
                                                                  colors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff8301BC),
                                                                    Color(
                                                                        0xffD2286A)
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
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        15),
                                                                'Parcourir ce calendrier',
                                                                colors: [
                                                                  Color(
                                                                      0xff8301BC),
                                                                  Color(
                                                                      0xffD2286A)
                                                                ],
                                                              ),
                                                              GradientIcon(
                                                                Icons
                                                                    .arrow_forward_ios,
                                                                13,
                                                                LinearGradient(
                                                                  colors: <
                                                                      Color>[
                                                                    Color(
                                                                        0xff8301BC),
                                                                    Color(
                                                                        0xffD2286A)
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          style: ButtonStyle(
                                                              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 5)),
                                                              foregroundColor: MaterialStateProperty.all<Color>(
                                                                  Colors.grey),
                                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          8.0),
                                                                  side: BorderSide(
                                                                      color: Colors
                                                                          .grey)))),
                                                          onPressed: () =>
                                                              _selectDate(context)),
                                                      SizedBox(width: 10),
                                                    ]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Localisation',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15.0),
                                                child: Container(
                                                  height: 55,
                                                  width: size.width,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
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
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              7.0,
                                                                          bottom:
                                                                              3),
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/Rectangle 4187.png'),
                                                                    ),
                                                                  ),
                                                                  Center(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              7.0),
                                                                      child:
                                                                          GradientIcon(
                                                                        Icons
                                                                            .location_on_outlined,
                                                                        25.0,
                                                                        LinearGradient(
                                                                          colors: <
                                                                              Color>[
                                                                            Color(0xff8301BC),
                                                                            Color(0xffD2286A)
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
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 8.0),
                                                          child: GradientIcon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            13,
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Sélectionner le prix',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Spacer(),
                                                    GradientText(
                                                      '\$20-\$120',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'AirbnbCereal',
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                      colors: [
                                                        Color(0xff8301BC),
                                                        Color(0xffD2286A)
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: SfRangeSlider(
                                                  min: _min,
                                                  inactiveColor: Colors.grey,
                                                  values: _values,
                                                  interval: 20,
                                                  showTicks: true,
                                                  showLabels: true,
                                                  enableTooltip: true,
                                                  tooltipTextFormatterCallback:
                                                      (dynamic actualValue,
                                                          String
                                                              formattedText) {
                                                    return actualValue
                                                        .toStringAsFixed(0);
                                                  },
                                                  minorTicksPerInterval: 1,
                                                  activeColor:
                                                      Color(0xffD2286A),
                                                  max: _max,
                                                  dragMode: SliderDragMode.both,
                                                  onChanged:
                                                      (SfRangeValues value) {
                                                    setState(() {
                                                      _values = value;
                                                      print(_values);
                                                    });
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 58.0,
                                                      child: RaisedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          AddEventScreen()));
                                                          // if (_formKey.currentState!.validate()) {
                                                          //   ScaffoldMessenger.of(context).showSnackBar(
                                                          //     const SnackBar(
                                                          //         content: Text('Processing Data')),
                                                          //   );
                                                          // }
                                                        },
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                width: 1),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
                                                        padding:
                                                            EdgeInsets.all(0.0),
                                                        child: Ink(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0)),
                                                          child: Container(
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        130.0,
                                                                    minHeight:
                                                                        58.0),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Réinitialiser',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'AirbnbCereal',
                                                                      color: Color(
                                                                          0xff807A7A),
                                                                      fontSize:
                                                                          16,
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
                                                    Container(
                                                      height: 42.0,
                                                      child: RaisedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          AddEventScreen()));
                                                          // if (_formKey.currentState!.validate()) {
                                                          //   ScaffoldMessenger.of(context).showSnackBar(
                                                          //     const SnackBar(
                                                          //         content: Text('Processing Data')),
                                                          //   );
                                                          // }
                                                        },
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0)),
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
                                                                              10.0)),
                                                          child: Container(
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        110.0,
                                                                    minHeight:
                                                                        42.0),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Appliquer'
                                                                      .toUpperCase(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'AirbnbCereal',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          15,
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
                                            ]),
                                          ),
                                        ),
                                      ),
                                    );
                                  });
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
                                    maxWidth: 75.0, minHeight: 3.0),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/filterIcon.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Filtres',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'AirbnbCereal',
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height,
              child: ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  elevation: 2,
                  shadowColor: Colors.grey,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleEventScreen()),
                        );
                      },
                      onLongPress: () {
                        eventSearchPopUp(context, size);
                      },
                      child: ListTile(
                        title: Text('1st  May- LUN -2:00 PM',
                            style: TextStyle(
                                fontFamily: 'AirbnbCereal',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 211, 7, 194))),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('La partie finale de\nbasketball',
                                style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Prix : 70€',
                                      style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        leading: Image.asset(
                          "assets/125.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
