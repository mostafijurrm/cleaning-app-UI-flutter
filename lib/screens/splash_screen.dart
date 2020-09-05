
import 'dart:async';

import 'package:cleaning_app_ui/screens/dashboard_screen.dart';
import 'package:cleaning_app_ui/utils/dimensions.dart';
import 'package:cleaning_app_ui/utils/my_color.dart';
import 'package:cleaning_app_ui/utils/my_string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    /*Timer(
      Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DashboardScreen()))
    );*/
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.primaryColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.asset(
                'assets/splash_bg.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 100,
                child: _bodyWidget(context),
            ),
            Positioned(
              bottom: 0,
              right: -20,
              child: FlatButton(
                child: Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40))
                ),
                  child: Center(
                    child: Text(
                        'Get Started',
                      style: GoogleFonts.ubuntu(
                        fontSize: Dimensions.defaultText,
                        color: ColorResources.primaryColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
            ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashboardScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _bodyWidget(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon.png'),
              SizedBox(width: 10,),
              Text(
                MyString.NIMBOL,
                style: GoogleFonts.ubuntu(
                    fontSize: Dimensions.largeText,
                    color: ColorResources.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 50, left: 50, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  MyString.CLEAN_HOME_CLEAN_LIFE,
                  style: GoogleFonts.ubuntu(
                      fontSize: Dimensions.extraLargeText,
                      color: ColorResources.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  MyString.BOOK_CLEANERS,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                      fontSize: Dimensions.largeText,
                      color: ColorResources.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
