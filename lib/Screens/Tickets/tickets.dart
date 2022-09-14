// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Ticket%20scan/ticket_scan.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
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
                            'Tickets',
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
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => HomePageClient()),
                          // );
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
                                BoxConstraints(maxWidth: 89.0, minHeight: 33.0),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'DELETE ALL',
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
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: TabBar(
                                indicatorPadding: EdgeInsets.all(0.0),
                                indicatorWeight: 0,
                                indicatorColor:
                                    Color.fromARGB(255, 180, 17, 118),
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
                                  Tab(
                                    child: Text("Ticket valides",
                                        style: TextStyle(
                                            fontFamily: 'AirbnbCereal',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Tab(
                                    child: Text("Ticket Expirés",
                                        style: TextStyle(
                                            fontFamily: 'AirbnbCereal',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                height: size.height,
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Colors.grey, width: 0.5))),
                                child: TabBarView(children: <Widget>[
                                  Tab1(),
                                  Tab2(),
                                ]))
                          ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  GradientIcon(
    this.icon,
    this.size,
    this.gradient,
  );

  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        InkWell(
          onTap: () {
            QRCodeTicket(context, size);
          },
          child: Container(
              height: size.height,
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 5,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                        child: InkWell(child: Image.asset("assets/SZ 1.png")));
                  })),
        )
      ]),
    );
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          InkWell(
            onTap: () {
              QRCodeTicket(context, size);
            },
            child: Container(
                height: size.height,
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 5,
                      );
                    },
                    shrinkWrap: true,
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                          child:
                              InkWell(child: Image.asset("assets/SZ 1.png")));
                    })),
          )
        ]),
      ),
      bottomNavigationBar: BottomTabBar(currentIndex: 3),
    );
  }
}

void QRCodeTicket(context, size) {
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
                        "assets/TicketQRCode.png",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 49.0,
                        child: RaisedButton(
                          onPressed: () {
                            print('Ticket Scan');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TicketScan()),
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
                                  maxWidth: 131.0, minHeight: 49.0),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'scan Qr'.toUpperCase(),
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
                );
              },
            ),
          ));
}
