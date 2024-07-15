import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/styles_manager.dart';

ThemeData themeLight=ThemeData(
  primaryColor: AppColors.primaryColor,
  hintColor: AppColors.gray,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.white,
  fontFamily: AppStrings.fontFamily,
  appBarTheme:  const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light
      ),
      iconTheme: IconThemeData(
          color: AppColors.black
      ),
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20)),
  textTheme:   const TextTheme(
    bodyMedium: TextStyle(
        height: 1.3,
        fontSize: 20,
        color: AppColors.black,
        fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(
        height: 1.3,
        fontSize: 30,
        color: AppColors.black,
        fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        height: 1.3,
        fontSize: 24,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500),
    displaySmall: TextStyle(
      fontSize: 16,
      color: AppColors.gray,
      // fontWeight: FontWeight.w500
    ),
    displayLarge:  TextStyle(
        fontSize: 30,
        color: AppColors.gray,
        fontWeight: FontWeight.w400
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      color: AppColors.primaryColor,
      // fontWeight: FontWeight.w500
    ),
    labelSmall:  TextStyle(
      fontSize: 16,
      color: AppColors.black,
      // fontWeight: FontWeight.w500
    ),
  ),
  //text form field
  inputDecorationTheme: InputDecorationTheme(
    contentPadding:  const EdgeInsets.all(12),
    labelStyle:  textStyleRegular(color: AppColors.primaryColor,fontSize: 14),
    errorStyle:  textStyleRegular(color: AppColors.red,fontSize: 14),
    hintStyle: textStyleRegular(color: AppColors.lightGrey,fontSize: 14),
    enabledBorder:  const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.gray,width: 1),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder:  const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor,width: 1),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    errorBorder:  const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.red  ,width:1),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedErrorBorder:  const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor,width: 1),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.black, // Define the color of the icon
    size: 20, // Define the size of the icon
  ),
  iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all(AppColors.black),
        alignment: Alignment.center,
        animationDuration: const Duration(milliseconds: 500),
      )
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedIconTheme: IconThemeData(
        color: AppColors.primaryColor, // Define the color of the icon
        size: 30, // Define the size of the icon
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.gray, // Define the color of the icon
        size: 20, // Define the size of the icon
      ),type: BottomNavigationBarType.fixed
  ),
);

ThemeData themeDark=ThemeData(
  primaryColor: AppColors.primaryColor,
  hintColor: AppColors.gray,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.black,
  fontFamily: AppStrings.fontFamily,
  // scrollbarTheme: ScrollbarThemeData(
  // ),
  appBarTheme:  AppBarTheme(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light
    ),
      iconTheme: IconThemeData(
          color: AppColors.lightLightGray
      ),
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20)),
  textTheme:   TextTheme(
    bodyMedium: TextStyle(
        height: 1.3,
        fontSize: 20,
        color: AppColors.lightLightGray,
        fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(
        height: 1.3,
        fontSize: 30,
        color: AppColors.lightLightGray,
        fontWeight: FontWeight.bold),
    displayMedium: const TextStyle(
        height: 1.3,
        fontSize: 24,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500),
      displaySmall: const TextStyle(
          fontSize: 16,
          color: AppColors.gray,
          // fontWeight: FontWeight.w500
      ),
    displayLarge:  const TextStyle(
      fontSize: 30,
      color: AppColors.gray,
      fontWeight: FontWeight.w400
    ),
    bodySmall: const TextStyle(
      fontSize: 16,
      color: AppColors.primaryColor,
      // fontWeight: FontWeight.w500
    ),
    labelSmall:  TextStyle(
      fontSize: 16,
      color: AppColors.lightLightGray,
      // fontWeight: FontWeight.w500
    ),
  ),
    //text form field
    inputDecorationTheme: InputDecorationTheme(
      contentPadding:  const EdgeInsets.all(12),
      labelStyle:  textStyleRegular(color: AppColors.primaryColor,fontSize: 14),
      errorStyle:  textStyleRegular(color: AppColors.red,fontSize: 14),
      hintStyle: textStyleRegular(color: AppColors.lightGrey,fontSize: 14),
      enabledBorder:  const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.gray,width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder:  const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor,width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      errorBorder:  const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.red  ,width:1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedErrorBorder:  const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor,width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  iconTheme: const IconThemeData(
    color: AppColors.gray, // Define the color of the icon
    size: 20, // Define the size of the icon
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all(AppColors.gray),
      alignment: Alignment.center,
      animationDuration: const Duration(milliseconds: 500),
    )
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.gray,
    selectedIconTheme: IconThemeData(
      color: AppColors.primaryColor, // Define the color of the icon
      size: 30, // Define the size of the icon
    ),
    unselectedIconTheme: IconThemeData(
      color: AppColors.gray, // Define the color of the icon
      size: 20, // Define the size of the icon
    ),type: BottomNavigationBarType.fixed
  ),
);
ThemeData appTheme() {
  return ThemeData(
      primaryColor: AppColors.primaryColor,
      hintColor: AppColors.gray,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.black,
      fontFamily: AppStrings.fontFamily,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: AppColors.black
        ),
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20)),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
            height: 1.3,
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
  );
}
