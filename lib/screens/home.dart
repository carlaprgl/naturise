import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                  child: Image(
                    height: 150.0,
                    image: AssetImage('assets/naturise.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 350.0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.grey[400],
                                      Colors.grey[200],
                                      Colors.grey[100],
                                      Colors.white70,
                                      Colors.grey[100],
                                      Colors.grey[200],
                                    ]),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundImage: AssetImage('assets/globe.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Did you konw it is Earth?',
                                    style: TextStyle(
                                        color: Color(0xff7a994f),
                                        fontSize: 16.0))
                              ],
                            ),
                            Row(
                              children: [
                                Text('Overshoot Day in one month?',
                                    style: TextStyle(
                                        color: Color(0xff7a994f),
                                        fontSize: 16.0)),
                              ],
                            ),
                            Row(
                              children: [
                                Text('This means we woul\'d',
                                    style: TextStyle(
                                        color: Color(0xff7a994f),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'currently need 1.7 worlds',
                                  style: TextStyle(
                                    color: Color(0xff7a994f),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            FlatButton(
                color: Color(0xffdfdfdf),
                height: 250.0,
                minWidth: 250.0,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/scan');
                },
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/scan.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Scan product',
                      style: TextStyle(
                          color: Color(
                            0xff7a994f,
                          ),
                          fontSize: 18.0),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
