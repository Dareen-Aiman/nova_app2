

import 'package:flutter/widgets.dart';

class BnScreens{
  // final PreferredSizeWidget appBar;
  final Widget widget;
  final String title;
  final IconData? firstIcon;
  final IconData? secondIcon;


  BnScreens({
    required this.title
    ,this.firstIcon,
    this.secondIcon,
    required this.widget});
}
