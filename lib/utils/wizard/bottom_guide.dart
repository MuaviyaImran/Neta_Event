// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:neta_event/Screens/Auth%20Screens/pre_signup_screen.dart';
import 'package:neta_event/Screens/Auth%20Screens/signin_Screen.dart';
import 'package:neta_event/utils/wizard/bubble_tab.dart';

import '../route_names.dart';

// Utils

class BottomGuide extends StatelessWidget {
  final Function onPressNext;
  final Map<String, dynamic> sectionData;
  BottomGuide({required this.onPressNext, required this.sectionData});

  @override
  Widget build(BuildContext context) {
    int currentIndex = sectionData['index'];
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.32,
      child: Stack(
        children: [
          Column(
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 100),
                child: _GuideTitle(
                    key: Key('$currentIndex'), title: sectionData['title']),
              ),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 100),
                child: _GuideTabs(
                    key: Key('$currentIndex'), current: sectionData['index']),
              ),
              currentIndex != 2
                  ? _GuideNext(
                      key: Key('$currentIndex'),
                      onPressNext: onPressNext,
                      button: sectionData['button'])
                  : _GuideNextPage(
                      key: Key('$currentIndex'),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}

class _GuideTabs extends StatelessWidget {
  final int current;
  _GuideTabs({Key? key, required this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.width * 0.06, horizontal: 20),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: BubbleTab(length: 3, current: current),
          ),
        ],
      ),
    );
  }
}

class _GuideTitle extends StatelessWidget {
  final String title;
  _GuideTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),

      // width: 260,
      child: Text(
        '$title',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2!.copyWith(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
      ),
    );
  }
}

class _GuideDetail extends StatelessWidget {
  // Animation
  final String? detail;
  _GuideDetail({Key? key, this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.01, horizontal: 0),
      width: size.width * 0.6,
      // height: 30,
      child: Text(
        '$detail',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2!.copyWith(
              fontSize: size.width < 400 ? 9 : 16,
              letterSpacing: 0.45,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}

class _GuideNext extends StatelessWidget {
  final Function onPressNext;
  String button;
  _GuideNext({Key? key, required this.onPressNext, required this.button})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: Row(
        children: [
          TextButton(
            child: Text(
              'Passer',
              style: TextStyle(fontFamily: 'AirbnbCereal', color: Colors.black),
            ),
            onPressed: () {},
          ),
          Spacer(),
          Container(
            height: 50.0,
            child: RaisedButton(
              onPressed: () {
                onPressNext();
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
                    borderRadius: BorderRadius.circular(12.0)),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 200.0, minHeight: 22.0),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        button,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'AirbnbCereal', color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/Vector (Stroke).png',
                        width: 10,
                      ),
                      Image.asset(
                        'assets/Vector (Stroke)u.png',
                        width: 10,
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GuideNextPage extends StatefulWidget {
  _GuideNextPage({Key? key}) : super(key: key);

  @override
  __GuideNextPageState createState() => __GuideNextPageState();
}

class __GuideNextPageState extends State<_GuideNextPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((Duration _) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return FadeTransition(
      opacity: _animation,
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: () {
            finishGuide(context);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: EdgeInsets.all(0.0),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff8301BC), Color(0xffD2286A)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(12.0)),
            child: Container(
              constraints: BoxConstraints(maxWidth: 200.0, minHeight: 22.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Commencer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'AirbnbCereal', color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/Vector (Stroke).png',
                    width: 10,
                  ),
                  Image.asset(
                    'assets/Vector (Stroke)u.png',
                    width: 10,
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void finishGuide(BuildContext c) async {
    print("Finish Guide Pressed");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignIn()),
    );
  }
}
