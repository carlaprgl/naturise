import 'package:flutter/material.dart';

class PlasticTree extends StatefulWidget {
  @override
  _PlasticTreeState createState() => _PlasticTreeState();
}

class _PlasticTreeState extends State<PlasticTree> {
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
          elevation: 0.0,
          centerTitle: true,
          toolbarHeight: MediaQuery.of(context).size.height * 0.13,
          title: Column(
            children: [
              Text(
                'Where your plastic',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
              ),
              Text(
                'comes from',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                          Navigator.pushReplacementNamed(
                              context, '/yourproduct');
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
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50.0,
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                                contentPadding: EdgeInsetsGeometry.lerp(
                                    EdgeInsets.only(left: 3.0),
                                    EdgeInsets.all(0.0),
                                    0.0),
                                leading: Image(
                                  image: AssetImage('assets/recycleLight.png'),
                                ),
                                title: Transform.translate(
                                  offset: Offset(14, 0),
                                  child: Text(
                                    'Collected,brought to recycling',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                                contentPadding: EdgeInsetsGeometry.lerp(
                                    EdgeInsets.only(left: 3.0),
                                    EdgeInsets.all(0.0),
                                    0.0),
                                leading: Image(
                                  image: AssetImage('assets/factory.png'),
                                ),
                                title: Transform.translate(
                                  offset: Offset(14, 0),
                                  child: Text(
                                    'Polymer Producer',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                                contentPadding: EdgeInsetsGeometry.lerp(
                                    EdgeInsets.only(left: 3.0),
                                    EdgeInsets.all(0.0),
                                    0.0),
                                leading: Image(
                                  image: AssetImage('assets/packaging.png'),
                                ),
                                title: Transform.translate(
                                  offset: Offset(14, 0),
                                  child: Text(
                                    'Packaging',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                                contentPadding: EdgeInsetsGeometry.lerp(
                                    EdgeInsets.only(left: 3.0),
                                    EdgeInsets.all(0.0),
                                    0.0),
                                leading: Image(
                                  image: AssetImage('assets/truck.png'),
                                ),
                                title: Transform.translate(
                                  offset: Offset(14, 0),
                                  child: Text(
                                    'Transport to supermarket',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                          ],
                        ),
                      ),
                      flex: 6,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              width: 30.0,
                              height: 480.0,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: VerticalDivider(
                                  color: Colors.grey[700],
                                  thickness: 8.0,
                                  indent: 20,
                                  width: 10.0,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30.0,
                              left: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.grey[400]),
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            Positioned(
                              top: 450,
                              left: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.grey[400]),
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                          ]),
                        ],
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsetsGeometry.lerp(
                                  EdgeInsets.only(left: 3.0),
                                  EdgeInsets.all(0.0),
                                  0.0),
                              leading: Image(
                                image: AssetImage('assets/house.png'),
                              ),
                              title: Transform.translate(
                                offset: Offset(-14, 0),
                                child: Text(
                                  'Plastic Waste from households',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            ListTile(
                              contentPadding: EdgeInsetsGeometry.lerp(
                                  EdgeInsets.only(left: 3.0),
                                  EdgeInsets.all(0.0),
                                  0.0),
                              leading: Image(
                                image: AssetImage('assets/chemicals.png'),
                              ),
                              title: Transform.translate(
                                offset: Offset(-14, 0),
                                child: Text(
                                  'Refinery',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            ListTile(
                              contentPadding: EdgeInsetsGeometry.lerp(
                                  EdgeInsets.only(left: 3.0),
                                  EdgeInsets.all(0.0),
                                  0.0),
                              leading: Image(
                                image: AssetImage('assets/factory.png'),
                              ),
                              title: Transform.translate(
                                offset: Offset(-14, 0),
                                child: Text(
                                  'Plastic Producer & Retailer',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            ListTile(
                              contentPadding: EdgeInsetsGeometry.lerp(
                                  EdgeInsets.only(left: 3.0),
                                  EdgeInsets.all(0.0),
                                  0.0),
                              leading: Image(
                                image: AssetImage('assets/packaging.png'),
                              ),
                              title: Transform.translate(
                                offset: Offset(-14, 0),
                                child: Text(
                                  'Final Product',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            ListTile(
                              contentPadding: EdgeInsetsGeometry.lerp(
                                  EdgeInsets.only(left: 3.0),
                                  EdgeInsets.all(0.0),
                                  0.0),
                              leading: Image(
                                image: AssetImage('assets/cart.png'),
                              ),
                              title: Transform.translate(
                                offset: Offset(-14, 0),
                                child: Text(
                                  'Sold in Supermarket',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      flex: 6,
                    )
                  ],
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
        ))),
      ),
    );
  }
}
