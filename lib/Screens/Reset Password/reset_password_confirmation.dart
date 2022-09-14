// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Auth%20Screens/signin_Screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ResetPasswordConfirmation extends StatelessWidget {
  const ResetPasswordConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset("assets/passresest.PNG"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: GradientText(
              'Congrats',
              style: TextStyle(
                  fontFamily: 'AirbnbCereal',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500),
              colors: [Color(0xff8301BC), Color(0xffD2286A)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              'Mot de passe modifié \ncorrectement',
              style: TextStyle(
                  fontFamily: 'AirbnbCereal',
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Center(
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                    // if (_formKey.currentState!.validate()) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(
                    //         content: Text('Processing Data')),
                    //   );
                    // }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff8301BC), Color(0xffD2286A)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 271.0, minHeight: 99.0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'NEXT',
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
      )),
    );
  }
}

//