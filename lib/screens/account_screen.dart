import 'package:cleaning_app_ui/utils/dimensions.dart';
import 'package:cleaning_app_ui/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    color: ColorResources.primaryColor
                ),
                child: Image.asset('assets/profile.png'),
              ),
              Positioned(
                  top: 170,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height-200,
                    decoration: BoxDecoration(
                        color: ColorResources.lightWhite,
                        borderRadius: BorderRadius.all(Radius.circular(40.0))
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 50, top: 40),
                          child: Align(
                            alignment: Alignment.topLeft,
                              child: Text(
                                  'Account',
                                style: GoogleFonts.ubuntu(
                                  fontSize: Dimensions.defaultText,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: ColorResources.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                        'assets/notification.png'
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      'Notifications',
                                      style: GoogleFonts.ubuntu(
                                          fontSize: Dimensions.defaultText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: ColorResources.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                        'assets/calender.png'
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      'My Bookings',
                                      style: GoogleFonts.ubuntu(
                                          fontSize: Dimensions.defaultText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: ColorResources.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  Expanded(flex: 1,
                                      child: Image.asset('assets/tick.png')),
                                  SizedBox(width: 40,),
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      'My Plan',
                                      style: GoogleFonts.ubuntu(
                                          fontSize: Dimensions.defaultText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: ColorResources.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  Expanded(flex: 1,
                                      child: Image.asset('assets/address.png')),
                                  SizedBox(width: 40,),
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      'Addresses',
                                      style: GoogleFonts.ubuntu(
                                          fontSize: Dimensions.defaultText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  'Share',
                                style: TextStyle(
                                  fontSize: Dimensions.defaultText,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: ColorResources.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                      child: Image.asset('assets/facebook.png')),
                                  SizedBox(width: 40,),
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      'Facebook',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: Dimensions.defaultText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: ColorResources.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                      child: Image.asset('assets/twitter.png')),
                                  SizedBox(width: 40,),
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      'Twitter',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: Dimensions.defaultText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: ColorResources.white
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                      child: Image.asset('assets/mail.png')
                                  ),
                                  SizedBox(width: 40,),
                                  Expanded(
                                    flex: 7,
                                    child: Text(
                                      'Gmail',
                                      style: GoogleFonts.ubuntu(
                                        fontSize: Dimensions.defaultText,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
