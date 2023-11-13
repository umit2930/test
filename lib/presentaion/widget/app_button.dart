import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/core/theme/app_text_style.dart';
import 'package:untitled1/presentaion/widget/app_text.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const AppButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 783),
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.red
        ),
        child: AppText(text),

      )
    );
  }
}
