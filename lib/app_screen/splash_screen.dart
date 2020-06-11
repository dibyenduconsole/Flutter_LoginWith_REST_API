import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    {
      
  @override
  void initState() {
    
    Timer(Duration(seconds: 5),
            () => Navigator.of(context).pushNamedAndRemoveUntil('/loginPage', (Route<dynamic> route) => false)
    );


 // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Icon(Icons.ac_unit,
                       size: 100.0,
                       color: Colors.redAccent,),
                      Text(
                        "Login with REST API",
                        style: TextStyle(
                            fontSize: 34.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      // backgroundColor: Colors.white,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}