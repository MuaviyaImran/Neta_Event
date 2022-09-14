// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Donation/donations.dart';
import 'package:neta_event/Screens/Enqu%C3%A8tes/enqu%C3%A8tes.dart';
import 'package:neta_event/Screens/Events/event_detail_screen.dart';
import 'package:neta_event/Screens/Profile/user_profile.dart';
import 'package:neta_event/Screens/Tontine/tontine.dart';

class MyDrawerPropriter extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawerPropriter> {
  String emails = "Please sign in to get access",
      fname = "Not",
      lname = "Signed In";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Drawer(
        elevation: 0,
        child: Container(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/profile_pic.png',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hamadoun Yara",
                    style: TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoggedInUserProfile()),
                    );
                  },
                  title: Text("Profile",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.person_outline)),
              ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EventDetailScreen()),
                    );
                  },
                  title: Text("Evènements",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.event_outlined)),
              ListTile(
                  onTap: () {},
                  title: Text("Contacter-nous",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.mail_outline)),
              ListTile(
                  onTap: () {},
                  title: Text("Aide & FAQs",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.help_outline)),
              ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Donations()),
                    );
                  },
                  title: Text("Donation",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Image.asset("assets/donation.png")),
              ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tontine()),
                    );
                  },
                  title: Text("Tontine",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Image.asset("assets/donation.png")),
              ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Enquetes()),
                    );
                  },
                  title: Text("Enquète",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.find_replace_outlined)),
              ListTile(
                  onTap: () {},
                  title: Text("Se déconnecter",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.logout_outlined)),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Container(
                    height: 46.0,
                    child: RaisedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => PreSignUpScreen()),
                        //);
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
                            color: Color(0xffca85d4),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 150.0, minHeight: 46.0),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Se connecter',
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
        ),
      ),
    );
  }
}
