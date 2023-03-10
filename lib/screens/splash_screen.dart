import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jewellary_app/screens/appbar.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Myappbar())));

    var assetsImage = new AssetImage(
        'assets/img/splashsc reen.jpg'); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
      height: 850,
        fit: BoxFit.cover,
        ); //<- Creates a widget that displays an image.



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
        body: Container(
          
          decoration: new BoxDecoration(color: Colors.white),
          child: new Center(
            child: image,
            
            
          ),
          //child: Lottie.network("https://iconscout.com/lottie/jewellery-6272164"),
        ), //<- place where the image appears
      ),
    );
  }
}
//https://iconscout.com/lottie/jewellery-6272164