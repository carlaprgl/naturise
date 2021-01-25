import 'package:flutter/material.dart';
import 'package:world_time_app/screens/home.dart';
import 'package:world_time_app/screens/information.dart';
import 'package:world_time_app/screens/your_foot_print.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex;
    Map data = {};
    final tabs = [
      Center(
        child: YourFootPrint(),
      ),
      Center(
        child: MyHomePage(),
      ),
      Center(
        child: Information(),
      ),
    ];
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    _currentIndex = data['index'];
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0.0,
              currentIndex: _currentIndex,
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
              backgroundColor: Color(0xffbaea7a),
              toolbarHeight: MediaQuery.of(context).size.height * 0.13,
            ),
            body: SingleChildScrollView(
              child: tabs[_currentIndex],
            )));
  }
}
