import 'package:flutter/material.dart';

class TopGuide extends StatelessWidget {
  final String demoImageUrl;
  TopGuide({required this.demoImageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.70,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child:
                _GuideImage(key: Key(demoImageUrl), demoImageUrl: demoImageUrl),
          ),
        ],
      ),
    );
  }
}

class _GuideImage extends StatelessWidget {
  final String demoImageUrl;

  _GuideImage({Key? key, required this.demoImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.37,
      //width: size.width * 0.,
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$demoImageUrl'),
        ),
      ),
    );
  }
}
