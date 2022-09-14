// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Donation/donations.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class DonationDetails extends StatefulWidget {
  const DonationDetails({Key? key}) : super(key: key);

  @override
  State<DonationDetails> createState() => _DonationDetailsState();
}

class _DonationDetailsState extends State<DonationDetails>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
                              'Donations',
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
                Container(
                  child: Image.asset("assets/128.png"),
                  height: 335,
                  width: 339,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text("Donate for kids to their well being",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Image.asset("assets/Vector1.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Isha Foundation",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                      maxLines: 6,
                      "We accomplish this through our unique network of health professionals and orga nization committed to improving health policies and practices, Isha Foundation is a nonprofit providing life saving medical care to children aims at creating a long and +more",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 15,
                          color: Color(0xff9D9D9D),
                          fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Text(
                          maxLines: 6,
                          "2000+ Donated",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 15,
                              color: Color(0xff9D9D9D),
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                      Text(
                          maxLines: 6,
                          "Total Donation",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 15,
                              color: Color(0xff9D9D9D),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Container(
                          width: 140,
                          child: Stack(
                            children: [
                              Image.asset("assets/Ellipse 1.png"),
                              Positioned(
                                  left: 20,
                                  child: Image.asset("assets/Ellipse 1.png")),
                              Positioned(
                                  left: 40,
                                  child: Image.asset("assets/Ellipse 1.png")),
                              Positioned(
                                  left: 60,
                                  child: Image.asset("assets/Ellipse 1.png")),
                              Positioned(
                                  left: 80,
                                  child: Image.asset("assets/Ellipse 1.png")),
                              Positioned(
                                left: 100,
                                child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 168, 168, 168)),
                                    child: CircleAvatar(
                                        child: Text('9+',
                                            style: TextStyle(
                                                fontFamily: 'AirbnbCereal',
                                                color: Colors.black,
                                                fontSize: 9,
                                                fontWeight: FontWeight.w800)),
                                        backgroundColor: Colors.transparent)),
                              )
                            ],
                          )),
                      Spacer(),
                      Text(
                          maxLines: 6,
                          "\$3456.08",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 18,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          maxLines: 6,
                          "23:21:02",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 30,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                  child: Container(
                    height: 56.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DonationScreenSecond()),
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
                              colors: [Color(0xff8301BC), Color(0xffD2286A)],
                            ),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth: size.width, minHeight: 56.0),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Donate now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
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
        bottomNavigationBar: BottomTabBar(currentIndex: 1));
  }
}

class DonationScreenSecond extends StatefulWidget {
  const DonationScreenSecond({Key? key}) : super(key: key);

  @override
  State<DonationScreenSecond> createState() => _DonationScreenSecondState();
}

class _DonationScreenSecondState extends State<DonationScreenSecond> {
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
                              'Donations',
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
                Container(
                  width: size.width,
                  height: 260,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/129.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Donate for kids to their well being',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/Vector1.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Isha Foundation",
                                        style: TextStyle(
                                            fontFamily: 'AirbnbCereal',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.0,
                  ),
                  child: Row(
                    children: [
                      Text("Choose Amount",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 22,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 86,
                          width: 96,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffD2286A),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("\$50",
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                          )),
                      Container(
                          height: 86,
                          width: 96,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("\$100",
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                          )),
                      Container(
                          height: 86,
                          width: 96,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("\$500",
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/Rectangle 23.png'),
                      Text("or",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 17,
                              color: Color(0xff9D9D9D),
                              fontWeight: FontWeight.w500)),
                      Image.asset('assets/Rectangle 23.png')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 263.0,
                        height: 76,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffCDCDCD),
                            hintText: "Enter Price Manually",
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Row(
                    children: [
                      Text("Don Anonyme",
                          style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        width: 10,
                      ),
                      ToggleSwitch(
                        minWidth: 20.0,
                        minHeight: 20,
                        cornerRadius: 20.0,
                        activeBgColors: [
                          [Colors.grey],
                          [Colors.grey]
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.black,
                        inactiveFgColor: Colors.white,
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        radiusStyle: true,
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                  child: Container(
                    height: 56.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DonationPayOptions()),
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
                              colors: [Color(0xff8301BC), Color(0xffD2286A)],
                            ),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Container(
                          constraints: BoxConstraints(
                              maxWidth: size.width, minHeight: 56.0),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Continuer',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'AirbnbCereal',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
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
        bottomNavigationBar: BottomTabBar(currentIndex: 1));
  }
}

class DonationPayOptions extends StatelessWidget {
  const DonationPayOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomTabBar(currentIndex: 2),
      backgroundColor: Colors.white,
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
                              'Payer',
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
                  padding: const EdgeInsets.only(top: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 73,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/paypal.png",
                            ),
                            Spacer(),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
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
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/visa.png",
                            ),
                            Spacer(),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
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
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/payoneer.png",
                            ),
                            Spacer(),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
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
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/visa.png",
                            ),
                            Spacer(),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextStyle(
                                  fontFamily: 'AirbnbCereal',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
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
                          colors: [Color(0xff8301BC), Color(0xffD2286A)],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                                Text(
                                  '150\$',
                                  style: TextStyle(
                                      fontFamily: 'AirbnbCereal',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 0),
                            child: Container(
                              height: 56.0,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Donations()),
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
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: size.width, minHeight: 56.0),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GradientText(
                                          colors: [
                                            Color(0xff8301BC),
                                            Color(0xffD2286A)
                                          ],
                                          'Donate now',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'AirbnbCereal',
                                              color: Colors.white,
                                              fontSize: 14,
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
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
