import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';
import '../utils/values_manager.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function()? onPress;
  final double fontSize;

  const CustomButton({super.key,
    required this.onPress,
    this.text = 'Write text ',
    this.color = AppColors.primaryColor,
  this.fontSize=16,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius:   BorderRadius.circular(10.0),
      ),
      height: 40.sp,
      padding: const EdgeInsets.all(10),
      onPressed: onPress,
      color: AppColors.primaryColor,
      child: CustomText(
        alignment: Alignment.center,
        fontSize: fontSize==16?AppSize.s16:fontSize,
        text: text,
        color: Colors.white,
      ),
    );
  }
}
