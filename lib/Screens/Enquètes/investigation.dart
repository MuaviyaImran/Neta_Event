// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:neta_event/home_page.dart';
import 'package:neta_event/main.dart';
import 'package:neta_event/utils/NavBars/bottom_tab.dart';

class Investigation extends StatefulWidget {
  const Investigation({Key? key}) : super(key: key);

  @override
  State<Investigation> createState() => _InvestigationState();
}

class _InvestigationState extends State<Investigation> {
  final _formKey = GlobalKey<FormState>();

  void _onChanged(dynamic val) => debugPrint(val.toString());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
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
                                'Enquète',
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
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Image.asset(
                      "assets/127.png",
                      width: size.width,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Cinema palace",
                          style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officiaAmet minim mollit non dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam ",
                      style: TextStyle(
                        fontFamily: 'AirbnbCereal',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Text(
                          "Répondre au questions",
                          style: TextStyle(
                            fontFamily: 'AirbnbCereal',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            "Lorem espium anturium kapul",
                            style: TextStyle(
                              fontFamily: 'AirbnbCereal',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: FormBuilderCheckboxGroup<String>(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                                labelText: 'Lorem espium anturium kapul'),
                            name: 'kapul',
                            wrapDirection: Axis.vertical,
                            options: const [
                              FormBuilderFieldOption(value: 'choice 1'),
                              FormBuilderFieldOption(value: 'choice 2'),
                              FormBuilderFieldOption(value: 'choice 3'),
                              FormBuilderFieldOption(value: 'choice 4'),
                            ],
                            onChanged: _onChanged,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
        bottomNavigationBar: BottomTabBar(currentIndex: 1));
  }
}
