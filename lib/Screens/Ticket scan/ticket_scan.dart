// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:neta_event/home_page.dart';

class TicketScan extends StatefulWidget {
  const TicketScan({Key? key}) : super(key: key);

  @override
  State<TicketScan> createState() => _TicketScanState();
}

class _TicketScanState extends State<TicketScan> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: QRAppBar(),
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.qr_code_outlined,
            size: 30,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Color(0xff8301BC), Color(0xffD2286A)])),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QRScanner()),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: size.width,
                height: 161,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(50.0),
                        bottomRight: const Radius.circular(50.0)),
                    gradient: LinearGradient(
                        colors: [Color(0xff8301BC), Color(0xffD2286A)])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.qr_code_2_sharp,
                          color: Colors.white,
                          size: 70,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Saif Yahyaoui",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'AirbnbCereal',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500)),
                              Text("Agent de Scan",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'AirbnbCereal',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                            ])
                      ],
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Row(
                      children: [
                        Text("Catégories",
                            style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                        Spacer(),
                        Row(
                          children: [
                            Text("Voir tout",
                                style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.forward_outlined,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 115,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) => Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        elevation: 2,
                        shadowColor: Colors.grey,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8),
                          child: Stack(
                            children: [
                              Image.asset("assets/123.png"),
                              Positioned(
                                top: 25,
                                left: 10,
                                child: Text('Musique &\nchant',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text("Evènements",
                            style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => EventDetailScreen()),
                            // );
                          },
                          child: Row(
                            children: [
                              Text("Voir tout",
                                  style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: size.height,
                    child: ListView.builder(
                      shrinkWrap: true,
                      reverse: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) => Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        elevation: 2,
                        shadowColor: Colors.grey,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 12),
                          child: ListTile(
                            title: Text('1er  May- LUN -2:00 PM',
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue)),
                            subtitle: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('One man show \nramatonlaye',
                                    style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        size: 20,
                                      ),
                                      Text('Radius Gallery • Santa Cruz',
                                          style: TextStyle(
                                            fontFamily: 'AirbnbCereal',
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            leading: Image.asset(
                              fit: BoxFit.contain,
                              "assets/124.png",
                            ),
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
      ),
    );
  }
}

class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/QR-code-app-screen 1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(alignment: Alignment.bottomCenter, child: QRAppBar()),
      ),
    );
    ;
  }
}

class QRAppBar extends StatefulWidget {
  const QRAppBar({Key? key}) : super(key: key);

  @override
  State<QRAppBar> createState() => _QRAppBarState();
}

class _QRAppBarState extends State<QRAppBar> {
  int currentIndex = 0;

  final tabs = {
    // 'HomePage': HomePageClient(),
    // 'Events': EventDetailScreen(),
    // 'UserProfile': LoggedInUserProfile(),
    // 'Tickets': Tickets(),
    // 'LogOut': LogOut(),
  };

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Color(0xFFB0178E),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            currentIndex == 0
                ? "assets/discover_icon.png"
                : "assets/discover_icon_not_filled.png",
            width: 28,
          ),
          label: 'Découvrir ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout_outlined),
          label: 'Déconnecter',
        ),
      ],
      onTap: (int index) {
        setState(() {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
        });
      },
    );
  }
}
