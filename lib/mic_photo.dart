import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MicPhoto extends StatefulWidget {
  @override
  _MicPhotoState createState() => _MicPhotoState();
}

class _MicPhotoState extends State<MicPhoto> {

  var _color;
  String _string;
  @override
  void initState() {
    super.initState();
    _color = Colors.blue;
    _string="Tap to Start Listening";
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          RawMaterialButton(
              onPressed: () {
                setState(() {
                      if (_color == Colors.blue) {
                        _color = Colors.red;
                        _string = "Tap to Stop Listening";
                      }
                      else {
                        _color = Colors.blue;
                        _string = "Tap to Start Listening";
                      }
                });
              },
              child: new Icon(
                (_color == Colors.blue)?Icons.mic : Icons.mic_off,
                size: 250.0,
              ),
              shape: new CircleBorder(),
              elevation: 2.0,
              fillColor: _color,
              padding: const EdgeInsets.all(15.0),
            ),
          Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(_string,textAlign: TextAlign.center,style: TextStyle(fontSize: 24.0,color: _color),),
            )
        ]
      ),
    );
  }
}

