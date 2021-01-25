import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class YourProduct extends StatefulWidget {
  @override
  _YourProductState createState() => _YourProductState();
}

class _YourProductState extends State<YourProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: Color(0xffbaea7a),
          items: [
            BottomNavigationBarItem(
              icon: Image(
                height: 50.0,
                image: AssetImage('assets/user.png'),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Image(
                height: 50.0,
                image: AssetImage('assets/home.png'),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Image(
                height: 50.0,
                image: AssetImage('assets/bulb.png'),
              ),
              title: Text(''),
            )
          ],
          onTap: (index) {
            Navigator.pushReplacementNamed(context, '/tabs',
                arguments: {'index': index});
          },
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: MediaQuery.of(context).size.height * 0.13,
          title: Column(
            children: [
              Text(
                'Your',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
              ),
              Text(
                'Product',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: AppBar(
                    toolbarHeight: 50,
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    centerTitle: true,
                    leading: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/scan');
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
                new CircularPercentIndicator(
                  radius: 230.0,
                  lineWidth: 42.0,
                  animation: true,
                  percent: 0.25,
                  center: Container(
                    child: Column(
                      children: [
                        new Text(
                          "25%",
                          style: new TextStyle(
                              fontSize: 38.0, color: Color(0xff5c8a1c)),
                        ),
                        new Text(
                          "recycled",
                          style: new TextStyle(
                              fontSize: 18.0, color: Color(0xff5c8a1c)),
                        ),
                      ],
                    ),
                    width: 100.0,
                    height: 70.0,
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  progressColor: Colors.lightGreen[300],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(),
                          flex: 1,
                        ),
                        Column(
                          children: [
                            Text(
                              'PLASTI-SCORE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0),
                            ),
                            Image(
                              image: AssetImage('assets/plastiscore.png'),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 120.0,
                              child: Text(
                                '0,2 kg plastic per kg',
                                style: TextStyle(
                                    color: Colors.lightGreen,
                                    fontSize: 18.0,
                                    height: 2),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 10.0),
                    child: Text(
                      'View value chain',
                      style: TextStyle(
                        color: Color(0xff98a68f),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  color: Color(0xffe4f6cc),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  splashColor: Colors.lightGreen[100],
                ),
                SizedBox(
                  height: 20.0,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonMinWidth: 130.0,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/tabs',
                            arguments: {'index': 0});
                      },
                      child: Text(
                        'Add to my footprint',
                        style: TextStyle(color: Colors.green),
                      ),
                      color: Colors.white,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      splashColor: Colors.lightGreen[100],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/plastictree');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "More Info",
                            style: TextStyle(color: Colors.green),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.green,
                          )
                        ],
                      ),
                      color: Colors.white,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      splashColor: Colors.lightGreen[100],
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
