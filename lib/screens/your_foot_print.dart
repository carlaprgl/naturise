import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class YourFootPrint extends StatefulWidget {
  @override
  _YourFootPrintState createState() => _YourFootPrintState();
}

class _YourFootPrintState extends State<YourFootPrint> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: AppBar(
                toolbarHeight: 100.0,
                title: Column(
                  children: [
                    Text(
                      'Your Footprint',
                      style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'How you\'ve impacted the planet',
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
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
            Container(
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Color(0xfffbfdf8)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  Text(
                    'This month,you saved',
                    style: TextStyle(
                        color: Color(0xff166a3c),
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                  Text(
                    '23kg CO2e',
                    style: TextStyle(
                        color: Color(0xff96c2a9),
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0),
                  ),
                ]),
              ),
            ),
            new CircularPercentIndicator(
              radius: 150.0,
              lineWidth: 26.0,
              animation: true,
              percent: 0.25,
              center: Container(
                child: Column(
                  children: [
                    new Text(
                      "25%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                          color: Colors.lightGreen[300]),
                    ),
                    new Text(
                      "recycled",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.lightGreen[300]),
                    ),
                  ],
                ),
                width: 100.0,
                height: 70.0,
              ),
              footer: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Compenstate',
                  style: TextStyle(color: Color(0xff98a68f), fontSize: 16.0),
                ),
                color: Color(0xffe4f6cc),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                splashColor: Colors.lightGreen[100],
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              progressColor: Colors.lightGreen[300],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Row(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/trees.png'),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      'You planted 2.3 trees this month by compensationg',
                      style: TextStyle(
                          color: Color(0xff166a3c),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0),
                    ),
                    flex: 2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
