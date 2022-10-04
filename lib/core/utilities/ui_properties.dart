import 'package:flutter/material.dart';

final Image playIcon = Image.asset("assets/images/icons/play_icon.png");

Image getCalendarIcon(BuildContext context) {
  if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
    return Image.asset("assets/images/icons/calendar_dark_theme_icon.png");
  } else {
    return Image.asset("assets/images/icons/calendar_light_theme_icon.png");
  }
}

final Image rememberMeIcon = Image.asset("assets/images/icons/remember_me_icon.png");
final Image searchIcon = Image.asset("assets/images/icons/search_icon.png");
final Image homeIcon = Image.asset("assets/images/icons/bottom_item0_icon.png");
final Image multiIcon = Image.asset("assets/images/icons/bottom_item1_icon.png");
final Image compassIcon = Image.asset("assets/images/icons/bottom_item2_icon.png");
final Image notesIcon = Image.asset("assets/images/icons/bottom_item3_icon.png");

const BorderRadius defaultWidgetBoarderRadius = BorderRadius.all(Radius.circular(15.0));

const double iconSizeSmall = 20;

const double paddingMedium = 10;

const double bottomNavigationBarHeight = 60;