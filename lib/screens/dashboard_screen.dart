import 'package:circular_check_box/circular_check_box.dart';
import 'package:cleaning_app_ui/screens/account_screen.dart';
import 'package:cleaning_app_ui/utils/dimensions.dart';
import 'package:cleaning_app_ui/utils/my_color.dart';
import 'package:cleaning_app_ui/utils/my_string.dart';
import 'package:cleaning_app_ui/utils/my_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  bool selected=true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: ColorResources.primaryColor
                  ),
                ),
                Positioned(
                  top: 40,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              MyString.NIMBOL,
                              style: GoogleFonts.ubuntu(
                                  color: ColorResources.white,
                                  fontSize: Dimensions.defaultText,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            FlatButton(
                              child: CircleAvatar(
                                child: Image.asset('assets/profile.png'),
                              ),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountScreen()));
                              },
                            )
                          ],
                        ),
                      ),
                    )),
                Positioned(
                  top: 100,
                  child: Container(
                    height: MediaQuery.of(context).size.height-100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: ColorResources.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Selected Cleaning',
                                  style: MyStyle.defaultTextStyle,
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 260,
                              child: ListView.builder(
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index){
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 180,
                                                width: 220,
                                                decoration: BoxDecoration(
                                                    color: ColorResources.secondaryColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(40))
                                                ),
                                                child: Image.asset('assets/initial_cleaning.png'),
                                              ),
                                              SizedBox(height: 10,),
                                              Text(
                                                'Initial Cleaning',
                                                style: GoogleFonts.ubuntu(
                                                    fontSize: Dimensions.defaultText,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              CircularCheckBox(
                                                  value: this.selected,
                                                  checkColor: Colors.white,
                                                  activeColor: Colors.pink.shade400,
                                                  inactiveColor: Colors.grey.withOpacity(0.5),
                                                  disabledColor: Colors.green,
                                                  onChanged: (val) => this.setState(() {
                                                    this.selected= !this.selected;
                                                  })
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 10,),
                                          Column(
                                            children: [
                                              Container(
                                                height: 180,
                                                width: 220,
                                                decoration: BoxDecoration(
                                                    color: ColorResources.secondaryColor,
                                                    borderRadius: BorderRadius.all(Radius.circular(40))
                                                ),
                                                child: Image.asset('assets/upkeep_cleaning.png'),
                                              ),
                                              SizedBox(height: 10,),
                                              Text(
                                                'Upkeep Cleaning',
                                                style: GoogleFonts.ubuntu(
                                                    fontSize: Dimensions.defaultText,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              CircularCheckBox(
                                                  value: this.selected,
                                                  checkColor: Colors.white,
                                                  activeColor: Colors.pink.shade400,
                                                  inactiveColor: Colors.grey.withOpacity(0.5),
                                                  disabledColor: Colors.green,
                                                  onChanged: (val) => this.setState(() {
                                                    this.selected= !this.selected;
                                                  })
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Selected Frequency',
                                  style: MyStyle.defaultTextStyle,
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: ColorResources.white,
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(color: ColorResources.grey.withOpacity(0.5))
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Weekly',
                                      style: GoogleFonts.ubuntu(
                                          fontSize: Dimensions.smallText
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: ColorResources.white,
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(color: ColorResources.grey.withOpacity(0.5))
                                  ),
                                  child: Center(
                                    child: Text(
                                      'BI-Weekly',
                                      style: GoogleFonts.ubuntu(
                                          fontSize: Dimensions.smallText
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: ColorResources.pink,
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(color: ColorResources.grey.withOpacity(0.5))
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Monthly',
                                      style: GoogleFonts.ubuntu(
                                          fontSize: Dimensions.smallText,
                                          color: ColorResources.white
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text(
                                  'Selected Extras',
                                  style: MyStyle.defaultTextStyle,
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: GridView.count(
                                crossAxisCount: 3,
                                mainAxisSpacing: 20.0,
                                crossAxisSpacing: 30.0,
                                padding: EdgeInsets.all(10),
                                shrinkWrap: true,
                                children: [
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: ColorResources.primaryColor,
                                                  borderRadius: BorderRadius.all(Radius.circular(80))
                                              ),
                                              child: Image.asset(
                                                'assets/freedge.png',
                                                scale: 2,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 2,
                                              top: 0,
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                      color: ColorResources.pink,
                                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '4',
                                                        style: TextStyle(
                                                          color: ColorResources.white,
                                                          fontSize: Dimensions.defaultText
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              )
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Inside Fridge',
                                        style: GoogleFonts.ubuntu(
                                            fontSize: Dimensions.smallText
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: ColorResources.primaryColor,
                                            borderRadius: BorderRadius.all(Radius.circular(80))
                                        ),
                                        child: Image.asset(
                                          'assets/organizing.png',
                                          scale: 2,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Organizing',
                                        style: GoogleFonts.ubuntu(
                                            fontSize: Dimensions.smallText
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: ColorResources.primaryColor,
                                                  borderRadius: BorderRadius.all(Radius.circular(80))
                                              ),
                                              child: Image.asset(
                                                'assets/blinds.png',
                                                scale: 2,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              right: 2,
                                              top: 0,
                                              child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        color: ColorResources.pink,
                                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '10',
                                                        style: TextStyle(
                                                            color: ColorResources.white,
                                                            fontSize: Dimensions.defaultText
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              )
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Small Blinds',
                                        style: GoogleFonts.ubuntu(
                                            fontSize: Dimensions.smallText
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: ColorResources.primaryColor,
                                            borderRadius: BorderRadius.all(Radius.circular(80))
                                        ),
                                        child: Image.asset(
                                          'assets/patio.png',
                                          scale: 2,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Patio',
                                        style: GoogleFonts.ubuntu(
                                            fontSize: Dimensions.smallText
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: ColorResources.primaryColor,
                                            borderRadius: BorderRadius.all(Radius.circular(80))
                                        ),
                                        child: Image.asset(
                                          'assets/organizing.png',
                                          scale: 2,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Organizing',
                                        style: GoogleFonts.ubuntu(
                                            fontSize: Dimensions.smallText
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: ColorResources.primaryColor,
                                                  borderRadius: BorderRadius.all(Radius.circular(80))
                                              ),
                                              child: Image.asset(
                                                'assets/patio.png',
                                                scale: 2,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              right: 2,
                                              top: 0,
                                              child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        color: ColorResources.pink,
                                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '11',
                                                        style: TextStyle(
                                                            color: ColorResources.white,
                                                            fontSize: Dimensions.defaultText
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              )
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Patio',
                                        style: GoogleFonts.ubuntu(
                                            fontSize: Dimensions.smallText
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
