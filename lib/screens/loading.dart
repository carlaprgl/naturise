import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/tabs', arguments: {'index': 1});
    });

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Image(
            height: 150.0,
            image: AssetImage('assets/naturise.png'),
          ),
        ),
      ),
    );
  }
}
