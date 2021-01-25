import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ScanImage extends StatefulWidget {
  @override
  _ScanImageState createState() => _ScanImageState();
}

class _ScanImageState extends State<ScanImage> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickerImage = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickerImage != null) {
        _image = File(pickerImage.path);
      } else {
        print('No image selected');
      }
    });
  }

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
        toolbarHeight: MediaQuery.of(context).size.height * 0.13,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: AppBar(
                  toolbarHeight: 70,
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
              Text(
                'Please scan your product',
                style: TextStyle(color: Colors.lightGreen, fontSize: 28.0),
              ),
              Container(
                  child: _image == null
                      ? FlatButton(
                          color: Color(0xffdfdfdf),
                          height: MediaQuery.of(context).size.height * 0.68,
                          minWidth: MediaQuery.of(context).size.width * 0.90,
                          onPressed: () {
                            getImage();
                          },
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/scan.png'),
                              ),
                            ],
                          ))
                      : Column(
                          children: [
                            SizedBox(
                              child: Image.file(_image),
                              height: MediaQuery.of(context).size.height * 0.68,
                              width: MediaQuery.of(context).size.width * 0.90,
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                RaisedButton.icon(
                                  icon: Icon(
                                    Icons.camera,
                                    color: Colors.black45,
                                  ),
                                  color: Color(0xffbaea7a),
                                  label: Text(
                                    'Take Picture',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                  onPressed: () {
                                    getImage();
                                  },
                                ),
                                RaisedButton.icon(
                                  icon: Icon(
                                    Icons.check,
                                    color: Colors.black45,
                                  ),
                                  color: Color(0xffbaea7a),
                                  label: Text(
                                    'Continue',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/yourproduct');
                                  },
                                ),
                              ],
                            )
                          ],
                        )),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
