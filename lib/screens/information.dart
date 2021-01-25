import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: AppBar(
            toolbarHeight: 120.0,
            title: Padding(
              padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Intresting information',
                      style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w500,
                          fontSize: 24.0),
                    ),
                  ),
                  Text(
                    'about recycling',
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.w500,
                        fontSize: 24.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Our planet needs your help!',
                      style: TextStyle(
                          color: Color(0xff9aafa8),
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/tabs',
                      arguments: {'index': 1});
                },
                elevation: 2.0,
                fillColor: Color(0xffbaea7a),
                child: Image(
                  height: 100.0,
                  image: AssetImage('assets/arrow_back.png'),
                ),
                padding: EdgeInsets.all(0.0),
                shape: CircleBorder(),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Container(
          color: Color(0xfff1fbe3),
          height: 100.0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              width: 350.0,
              child: Row(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/plastiscore3.png'),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/plastiscore');
                      },
                      child: Container(
                        child: Text(
                          'The Plasti - Score',
                          style: TextStyle(
                            color: Color(0xff7a994f),
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Container(
          color: Color(0xfff1fbe3),
          height: 100.0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              width: 350.0,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        'How to recycle the right way',
                        style: TextStyle(
                          color: Color(0xff7a994f),
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/recycle.png'),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Container(
          color: Color(0xfff1fbe3),
          height: 100.0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              width: 350.0,
              child: Row(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/drink.png'),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Multilayer Packaging',
                        style: TextStyle(
                          color: Color(0xff7a994f),
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
      ],
    );
  }
}
