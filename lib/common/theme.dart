import 'package:flutter/material.dart';

class AppStyles {

  const AppStyles();

  // Brand Colours
  static const Color brand1 = const Color(0xFF0CB3FF);
  static const Color brand2 = const Color(0xFF000000);
  static const Color brand3 = const Color(0xFFFFFFFF);
  static const Color brand4 = const Color(0xFF011B2B);
  static const Color brand5 = const Color(0xFFECECEC);

  // Secondary Colours
  static const Color sec1 = const Color(0xFF2B2B6D);
  static const Color sec2 = const Color(0xFF5E4B98);
  static const Color sec3 = const Color(0xFFC42B39);
  static const Color sec4 = const Color(0xFFED6B51);
  static const Color sec5 = const Color(0xFF7A807E);
  static const Color sec6 = const Color(0xFF004E5A);
  static const Color sec7 = const Color(0xFF5EBFB8);
  static const Color sec8 = const Color(0xFFFF6B8F);
  static const Color sec9 = const Color(0xFFFFE03B);
  static const Color sec10 = const Color(0xFFC8CFCF);
  static const Color sec11 = const Color(0xFF0678BF);
  static const Color sec12 = const Color(0xFF707070);
  static const Color sec13 = const Color(0xFFA8A8A8);

  // Suport Colours
  static const Color danger = const Color(0xFFBF0606);
  static const Color warning = const Color(0xFFED6B51);
  static const Color success = const Color(0xFF5DBF06);
  static const Color callToAction = const Color(0xFF0CB3FF);
  static const Color highRisk = const Color(0xFFFF0000);
  static const Color mediumRisk = const Color(0xFFFFCC00);
  static const Color lowRisk = const Color(0xFF02E700);
  static const Color detail = const Color(0xFFA6B1C0);

  // Shadow
  static const Color shadow = const Color(0x33000000);

  //List
  static const Color listRowUnread = const Color(0xFFE4E4E4);
  static const Color listRowRead = const Color(0xFFECECEC);


}

class TextStyles {

  const TextStyles();

  static const TextStyle appBackground = const TextStyle(
      color: AppStyles.brand4,
      fontFamily: 'TT Norms Pro'
  );

  static const TextStyle appBackgroundMedium = const TextStyle(
      color: AppStyles.brand4,
      fontFamily: 'TT Norms Pro Medium'
  );

  static const TextStyle light = const TextStyle(
      color: AppStyles.brand3,
      fontFamily: 'TT Norms Pro'
  );

  static const TextStyle dark = const TextStyle(
      color: AppStyles.brand2,
      fontFamily: 'TT Norms Pro'
  );

  static const TextStyle darkMedium = const TextStyle(
      color: AppStyles.brand2,
      fontFamily: 'TT Norms Pro Medium'
  );

  static const TextStyle lightMedium = const TextStyle(
      color: AppStyles.brand3,
      fontFamily: 'TT Norms Pro Medium'
  );

  static const TextStyle sec13 = const TextStyle(
      color: AppStyles.sec13,
      fontFamily: 'TT Norms Pro',
  );

  static const TextStyle sec1form = const TextStyle(
      color: AppStyles.sec1,
      fontFamily: 'TT Norms Pro',
      fontSize: 16,
  );

  static const TextStyle sec1 = const TextStyle(
      color: AppStyles.sec1,
      fontFamily: 'TT Norms Pro',
  );

  static const TextStyle sec1Medium = const TextStyle(
      color: AppStyles.sec1,
      fontFamily: 'TT Norms Pro Medium'
  );

  static const TextStyle sec1Bold = const TextStyle(
      color: AppStyles.sec1,
      fontFamily: 'TT Norms Pro Bold'
  );

  static const TextStyle sec2 = const TextStyle(
      color: AppStyles.sec2,
      fontFamily: 'TT Norms Pro'
  );

  static const TextStyle sec5 = const TextStyle(
      color: AppStyles.sec5,
      fontFamily: 'TT Norms Pro'
  );

  static const TextStyle sec11Bold = const TextStyle(
      color: AppStyles.sec11,
      fontFamily: 'TT Norms Pro Bold'
  );

  static const TextStyle highRisk = const TextStyle(
      color: AppStyles.highRisk,
      fontFamily: 'TT Norms Pro Bold'
  );

  static const TextStyle brand1 = const TextStyle(
      color: AppStyles.brand1,
      fontFamily: 'TT Norms Pro Bold'
  );

  static const TextStyle semiDark = const TextStyle(
      color: AppStyles.sec12,
      fontFamily: 'TT Norms Pro'
  );

  static const TextStyle semiDarkMedium = const TextStyle(
      color: AppStyles.sec12,
      fontFamily: 'TT Norms Pro Medium'
  );

  static const TextStyle semiDarkBold = const TextStyle(
      color: AppStyles.sec12,
      fontFamily: 'TT Norms Pro Bold'
  );

  static const TextStyle semiDarkBold20 = const TextStyle(
      color: AppStyles.sec12,
      fontFamily: 'TT Norms Pro Bold',
      fontSize: 20
  );

  static const TextStyle semiDarkUnderlined = const TextStyle(
      color: AppStyles.sec12,
      fontFamily: 'TT Norms Pro',
      decoration: TextDecoration.underline
  );

  static const TextStyle lightBold = const TextStyle(
      color: AppStyles.brand3,
      fontFamily: 'TT Norms Pro Bold'
  );

  static const TextStyle darkBold = const TextStyle(
      color: AppStyles.brand2,
      fontFamily: 'TT Norms Pro Bold'
  );

  static const TextStyle lightUnderlined = const TextStyle(
      color: AppStyles.brand3,
      fontFamily: 'TT Norms Pro',
      decoration: TextDecoration.underline
  );

  static const TextStyle lightForm = const TextStyle(
    color: AppStyles.brand3,
    fontFamily: 'TT Norms Pro',
    fontSize: 17,
  );

  static const TextStyle darkForm = const TextStyle(
    color: AppStyles.brand2,
    fontFamily: 'TT Norms Pro',
    fontSize: 24,
  );

  static const TextStyle lightDetail = const TextStyle(
    color: AppStyles.detail,
    fontFamily: 'TT Norms Pro'
  );

  static const TextStyle darklistInfo = const TextStyle(
    color: AppStyles.brand2,
    fontFamily: 'TT Norms Pro',
    fontSize: 17,
  );
}
