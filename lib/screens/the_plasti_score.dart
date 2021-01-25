import 'package:flutter/material.dart';

class PlastiScore extends StatefulWidget {
  @override
  _PlastiScoreState createState() => _PlastiScoreState();
}

class _PlastiScoreState extends State<PlastiScore> {
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
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.13,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: AppBar(
                    toolbarHeight: MediaQuery.of(context).size.height * 0.15,
                    title: Text(
                      'The Plasti - Score',
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    centerTitle: true,
                    leading: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/tabs',
                              arguments: {'index': 2});
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 150.0,
                      image: AssetImage('assets/plastiscore2.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      'The PLASTI-SCORE is a five-point scale that displays the recyclability of plastic products and therefore gives an indication about its enviromental footprint.',
                      style: TextStyle(color: Colors.grey[700], fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    color: Color(0xfff1fbe3),
                    height: 90.0,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage('assets/plastic.png'),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Text(
                            'Many products contains hidden plastic in Multilayers',
                            style: TextStyle(color: Colors.green[800]),
                          ),
                          flex: 4,
                        )
                      ],
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Get to konw more',
                    style: TextStyle(color: Colors.green),
                  ),
                  color: Colors.white,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  splashColor: Colors.lightGreen[100],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
