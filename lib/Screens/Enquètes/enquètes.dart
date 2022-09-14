// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Enqu%C3%A8tes/add_enqu%C3%A8tes.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

import '../Reset Password/forget_password_screen.dart';

class Enquetes extends StatefulWidget {
  const Enquetes({Key? key}) : super(key: key);

  @override
  State<Enquetes> createState() => _EnquetesState();
}

class _EnquetesState extends State<Enquetes> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
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
                              'Enquètes',
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
                padding: const EdgeInsets.only(
                  top: 15.0,
                ),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddEnquetes()),
                            );
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
                                      Text('Achevé',
                                          style: TextStyle(
                                            fontFamily: 'AirbnbCereal',
                                            color: Color(0xff4F4F4F),
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
          ),
        )),
        bottomNavigationBar: BottomTabBar(currentIndex: 2));
  }
}
