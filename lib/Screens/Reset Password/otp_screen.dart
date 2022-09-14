// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Reset%20Password/reset_password_screen.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTP_Screen extends StatefulWidget {
  const OTP_Screen({Key? key}) : super(key: key);

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}

class _OTP_ScreenState extends State<OTP_Screen> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Verification",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Nous vous avons envoyer le code \nde vérification sur abc@gmail.com",
                      style: TextStyle(
                          fontFamily: 'AirbnbCereal',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: OTPTextField(
                            controller: otpController,
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldWidth: 45,
                            fieldStyle: FieldStyle.box,
                            outlineBorderRadius: 15,
                            style: TextStyle(fontSize: 17),
                            onChanged: (pin) {
                              print("Changed: " + pin);
                            },
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            }),
                      ),

                      // Padding(
                      //   padding:
                      //       EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                      //   child: Container(
                      //     width: 50,
                      //     height: 50,
                      //     decoration: BoxDecoration(
                      //       color: Color.fromARGB(255, 255, 255, 255),
                      //       borderRadius: BorderRadius.circular(5),
                      //       border: Border.all(
                      //         color: Colors.grey,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     child: TextFormField(
                      //       inputFormatters: [
                      //         FilteringTextInputFormatter.digitsOnly,
                      //         LengthLimitingTextInputFormatter(1),
                      //       ],
                      //       //controller: otpController,
                      //       obscureText: false,
                      //       decoration: InputDecoration(
                      //         contentPadding: EdgeInsets.only(left: 17),
                      //         enabledBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //             color: Color(0x00000000),
                      //             width: 1,
                      //           ),
                      //           borderRadius: const BorderRadius.all(
                      //               Radius.circular(4.0)),
                      //         ),
                      //         focusedBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //             color: Color(0x00000000),
                      //             width: 1,
                      //           ),
                      //           borderRadius: const BorderRadius.only(
                      //             topLeft: Radius.circular(4.0),
                      //             topRight: Radius.circular(4.0),
                      //           ),
                      //         ),
                      //       ),
                      //       style: TextStyle(
                      //           fontFamily: 'AirbnbCereal',
                      //           fontSize: 24,
                      //           fontWeight: FontWeight.w500),
                      //       keyboardType: TextInputType.number,
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding:
                      //       EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                      //   child: Container(
                      //     width: 50,
                      //     height: 50,
                      //     decoration: BoxDecoration(
                      //       color: Color.fromARGB(255, 255, 255, 255),
                      //       borderRadius: BorderRadius.circular(5),
                      //       border: Border.all(
                      //         color: Colors.grey,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     child: TextFormField(
                      //       inputFormatters: [
                      //         FilteringTextInputFormatter.digitsOnly,
                      //         LengthLimitingTextInputFormatter(1),
                      //       ],
                      //       //controller: otpController,
                      //       obscureText: false,
                      //       decoration: InputDecoration(
                      //         contentPadding: EdgeInsets.only(left: 17),
                      //         enabledBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //             color: Color(0x00000000),
                      //             width: 1,
                      //           ),
                      //           borderRadius: const BorderRadius.all(
                      //               Radius.circular(4.0)),
                      //         ),
                      //         focusedBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //             color: Color(0x00000000),
                      //             width: 1,
                      //           ),
                      //           borderRadius: const BorderRadius.only(
                      //             topLeft: Radius.circular(4.0),
                      //             topRight: Radius.circular(4.0),
                      //           ),
                      //         ),
                      //       ),
                      //       style: TextStyle(
                      //           fontFamily: 'AirbnbCereal',
                      //           fontSize: 24,
                      //           fontWeight: FontWeight.w500),
                      //       keyboardType: TextInputType.number,
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding:
                      //       EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                      //   child: Container(
                      //     width: 50,
                      //     height: 50,
                      //     decoration: BoxDecoration(
                      //       color: Color.fromARGB(255, 255, 255, 255),
                      //       borderRadius: BorderRadius.circular(5),
                      //       border: Border.all(
                      //         color: Colors.grey,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     child: TextFormField(
                      //       inputFormatters: [
                      //         FilteringTextInputFormatter.digitsOnly,
                      //         LengthLimitingTextInputFormatter(1),
                      //       ],
                      //       //controller: otpController,
                      //       obscureText: false,
                      //       decoration: InputDecoration(
                      //         contentPadding: EdgeInsets.only(left: 17),
                      //         enabledBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //             color: Color(0x00000000),
                      //             width: 1,
                      //           ),
                      //           borderRadius: const BorderRadius.all(
                      //               Radius.circular(4.0)),
                      //         ),
                      //         focusedBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //             color: Color(0x00000000),
                      //             width: 1,
                      //           ),
                      //           borderRadius: const BorderRadius.only(
                      //             topLeft: Radius.circular(4.0),
                      //             topRight: Radius.circular(4.0),
                      //           ),
                      //         ),
                      //       ),
                      //       style: TextStyle(
                      //           fontFamily: 'AirbnbCereal',
                      //           fontSize: 24,
                      //           fontWeight: FontWeight.w500),
                      //       keyboardType: TextInputType.number,
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding:
                      //       EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                      //   child: Container(
                      //     width: 50,
                      //     height: 50,
                      //     decoration: BoxDecoration(
                      //       color: Color.fromARGB(255, 255, 255, 255),
                      //       borderRadius: BorderRadius.circular(5),
                      //       border: Border.all(
                      //         color: Colors.grey,
                      //         width: 2,
                      //       ),
                      //     ),
                      //     child: TextFormField(
                      //       inputFormatters: [
                      //         FilteringTextInputFormatter.digitsOnly,
                      //         LengthLimitingTextInputFormatter(1),
                      //       ],
                      //       //controller: otpController,
                      //       obscureText: false,
                      //       decoration: InputDecoration(
                      //         contentPadding: EdgeInsets.only(left: 17),
                      //         enabledBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //             color: Color(0x00000000),
                      //             width: 1,
                      //           ),
                      //           borderRadius: const BorderRadius.all(
                      //               Radius.circular(4.0)),
                      //         ),
                      //         focusedBorder: UnderlineInputBorder(
                      //           borderSide: BorderSide(
                      //             color: Color(0x00000000),
                      //             width: 1,
                      //           ),
                      //           borderRadius: const BorderRadius.only(
                      //             topLeft: Radius.circular(4.0),
                      //             topRight: Radius.circular(4.0),
                      //           ),
                      //         ),
                      //       ),
                      //       style: TextStyle(
                      //           fontFamily: 'AirbnbCereal',
                      //           fontSize: 24,
                      //           fontWeight: FontWeight.w500),
                      //       keyboardType: TextInputType.number,
                      //     ),
                      //   ),
                      // ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Container(
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ResetPasswordScreen()),
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
                                    colors: [
                                      Color(0xff8301BC),
                                      Color(0xffD2286A)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: 271.0, minHeight: 99.0),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Renvoyer le code dans  0:20",
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ))));
  }
}
