import 'package:cleaning_app_ui/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyle {
  static var defaultTextStyle = GoogleFonts.poppins(
      fontSize: Dimensions.defaultText,
    fontWeight: FontWeight.bold
  );

 static var buttonTextStyle = GoogleFonts.poppins(
    fontSize: Dimensions.defaultText,
  );

  static var headerTextStyle = GoogleFonts.poppins(
      fontSize: Dimensions.extraSmallText,
    fontWeight: FontWeight.w700
  );
  static var listTextStyle = GoogleFonts.poppins(
      fontSize: Dimensions.extraSmallText,
  );
}