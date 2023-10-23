import 'package:flutter/material.dart';

mixin Utils {
  setWidth(BuildContext? context, {int? widthPercent}) {
    widthPercent ??= 100;
    double widthPercent_ =
    MediaQuery.of(context!).size.width * (widthPercent / 100);
    return widthPercent_;
  }
    
  Widget setVerticalSpace({double? height}) {
    height ??= 20.0;
    Widget verticalSpace = SizedBox(height: height);
    return verticalSpace;
  }
}