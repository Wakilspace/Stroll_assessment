import 'package:flutter/material.dart';
import 'package:scroll_interview_task/presentation/ui/type.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'colors.dart';

ThemeData getScorersTheme() {
  return ThemeData(
    primaryColor: strollPale,
    scaffoldBackgroundColor: strollBlack,
    textTheme: TextTheme(
      displayLarge:
      getBoldStyle(color: strollWhite, fontSize: 24.sp),
      displayMedium:
      getRegularStyle(color: strollSilver, fontSize: 18.sp),
      displaySmall:
      getLightStyle(color:strollLavender, fontSize: 14.sp),  
      bodySmall: getRegularStyle(color: strollPlatinum),
      bodyLarge: getRegularStyle(color: strollPale),),
  );
}
