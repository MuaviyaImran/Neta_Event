// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Reset%20Password/forget_password_screen.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomTabBar(currentIndex: 2),
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
                            'Favoris',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height,
                  child: ListView.builder(
                    shrinkWrap: false,
                    reverse: false,
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
                          onLongPress: () {
                            //eventDeletePopUp(context, size);
                          },
                          child: ListTile(
                            title: Row(
                              children: [
                                Text('1st  May- LUN -2:00 PM',
                                    style: TextStyle(
                                        fontFamily: 'AirbnbCereal',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 211, 7, 194))),
                                Spacer(),
                                Image.asset('assets/bookmark.png'),
                              ],
                            ),
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
          ),
        ),
      ),
    );
  }
}
