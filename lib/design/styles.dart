import 'package:flutter/material.dart';
import 'package:moviedb_app/design/colors.dart';
import 'package:moviedb_app/design/dimentions.dart';

// Стили для текста

const TextStyle titleAppBar = TextStyle(
  color: textAppbarColor,
  fontSize: fontSize24,
  fontFamily: "SourceSansPro",
  fontWeight: FontWeight(600),
);

const TextStyle textBasic = TextStyle(
  color: textBasicColor,
  fontSize: fontSize16,
  fontFamily: "SourceSansPro",
  fontWeight: FontWeight(400),
);

const TextStyle textButResPswStyle = TextStyle(
  color: buttonRessetPswTextColor,
  fontSize: fontSize16,
  fontFamily: "SourceSansPro",
  fontWeight: FontWeight(400),
);

const TextStyle textHeadCardMovieStyle = TextStyle(
  color: textBasicColor,
  fontSize: fontSize16,
  fontFamily: "SourceSansPro",
  fontWeight: FontWeight(600),
);

const TextStyle textHeadENCardMovieStyle = TextStyle(
  color: textHeadGreyColor,
  fontSize: fontSize16,
  fontFamily: "SourceSansPro",
  fontWeight: FontWeight(400),
);

const TextStyle textDescriptionCardStyle = TextStyle(
  color: textBasicColor,
  fontSize: fontSize14,
  fontFamily: "SourceSansPro",
  fontWeight: FontWeight(400),
);

const TextStyle textDateCardStyle = TextStyle(
  color: textHeadGreyColor,
  fontSize: fontSize16,
  fontFamily: "SourceSansPro",
  fontWeight: FontWeight(500),
);

// Стили для полей ввода форм

final textFieldDecoration = InputDecoration(
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius8)),
  isCollapsed: true,
  contentPadding: EdgeInsets.symmetric(
    horizontal: padding8,
    vertical: padding8,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(radius8),
    borderSide: BorderSide(color: Color(0xFF01B4E4), width: 1),
  ),
);

// Стили для кнопок на главной

final buttonLoginStyle = ButtonStyle(
  backgroundColor: WidgetStatePropertyAll(buttonLoginBackColor),
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius8)),
  ),
  padding: WidgetStatePropertyAll(
    EdgeInsets.symmetric(horizontal: padding12, vertical: padding6),
  ),
);

final buttonResetPswStyle = ButtonStyle(
  backgroundColor: WidgetStatePropertyAll(buttomRessetPsvBackColor),
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius8)),
  ),
  padding: WidgetStatePropertyAll(
    EdgeInsets.symmetric(horizontal: padding12, vertical: padding6),
  ),
);
