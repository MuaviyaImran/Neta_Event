// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Reset%20Password/forget_password_screen.dart';

class SearchBarSc extends StatefulWidget {
  @override
  _SearchBarScState createState() => _SearchBarScState();
}

class _SearchBarScState extends State<SearchBarSc> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 45,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 25.0,
            ),
            SizedBox(
              width: 190.0,
              height: 76,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  hintText: "Search..",
                  hintStyle: TextStyle(
                    height: 3,
                    fontFamily: 'AirbnbCereal',
                    color: Color(0xffFFFFFF),
                  ),
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
                      borderRadius: BorderRadius.circular(40.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Color(0xff701D53),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 75.0, minHeight: 3.0),
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
    );
  }
}
