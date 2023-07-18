import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/my_colors.dart';

class AppThemes {
  static final light =       ThemeData(

    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    useMaterial3: true,
    fontFamily: GoogleFonts.aBeeZee().fontFamily,
  );

  static final dark =       ThemeData(

    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.secondaryColor),
    useMaterial3: true,
  );


}
////ddddd