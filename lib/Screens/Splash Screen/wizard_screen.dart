import 'package:flutter/material.dart';
import 'package:neta_event/utils/wizard/bottom_guide.dart';
import 'package:neta_event/utils/wizard/top_guide.dart';

class WizardScreen extends StatefulWidget {
  WizardScreen();

  @override
  _WizardScreenState createState() => _WizardScreenState();
}

class _WizardScreenState extends State<WizardScreen> {
  final List<Map<String, dynamic>> _section = [
    {
      'image': 'assets/2011.i518 1.png',
      'title': 'L’achat de vos ticket est devenu facile avec nous',
      'button': 'Aprés',
      'index': 0,
    },
    {
      'image': 'assets/3796037 1.png',
      'title': 'Payer vos tickets en toute sécurité',
      'button': 'Aprés',
      'index': 1,
    },
    {
      'image': 'assets/ee 1.png',
      'title': 'Des évènements tout au long de l’année',
      'index': 2,
    },
  ];
  int _sectionIndex = 0;
  late Map<String, dynamic> _currentSection = _section[_sectionIndex];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TopGuide(
                demoImageUrl: _currentSection['image'],
              ),
              BottomGuide(
                sectionData: _currentSection,
                onPressNext: _sectionIndex != 2 ? _nextSection : _nextSection,
                // : () {
                //     _endGuide(context);
                //   },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _nextSection() {
    if (_sectionIndex == 2) {
      _sectionIndex = 0;
    } else {
      _sectionIndex++;
    }

    _currentSection = _section[_sectionIndex];
    setState(() {});
  }
}
