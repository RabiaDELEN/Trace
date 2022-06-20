import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/main.dart';
import 'package:google_fonts/google_fonts.dart';



class signUpscreen extends StatefulWidget {

  @override


  _signUpscreenState createState() => _signUpscreenState();
}

class _signUpscreenState extends State<signUpscreen> with SingleTickerProviderStateMixin{
  @override
  var topPositioned = Get.height * .5;
  var bottomPositioned = Get.height * .5;
  var rightPositioned=0.0;
  var leftPositioned = 0.0;
  var textOpacity=0.0;

  void initState() {
    start();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash_bg.jpg'),
                  fit: BoxFit.cover)
          ),
          child: Stack(
            children: [
              Positioned(
                left: 15,
                bottom: 15,
                child: SafeArea(
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: textOpacity,
                    child: Text(
                      "TRACE",
                      style:  GoogleFonts.dosis().copyWith(fontSize: 35, fontWeight: FontWeight.w600,color: Colors.black),
                    ),
                  ),
                ),
              ),Positioned(
                right: 20,
                bottom: 50,
                child: SafeArea(
                  child: AnimatedOpacity(
                    duration: Duration(seconds: 2),
                    opacity: textOpacity,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
              AnimatedPositioned(
                  top: topPositioned,
                  bottom: bottomPositioned,
                  left: leftPositioned,
                  right: rightPositioned,
                  child: Image.asset(
                    "assets/icon/logo.png",
                    // color: Colors.white,
                  ),
                  duration: Duration(milliseconds: 600))
            ],
          ),
        ));
  }

  void start() {
    Future.delayed(Duration(seconds: 5), () {
      route();
    });
    Future.delayed(Duration(milliseconds: 10),(){
      setState(() {
        topPositioned = Get.height * .16;
        bottomPositioned = Get.height * .19;
        leftPositioned = -(Get.width * .5);
        rightPositioned = -(Get.width*.5);
        textOpacity =1;
      });
    });
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder: (context) => signUpscreen()
        )
    );
  }

}