import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/core/theme/app_colors.dart';
import 'package:untitled1/core/theme/app_text_style.dart';
import 'package:untitled1/presentaion/widget/app_text.dart';

class InputText extends StatefulWidget{

  final TextEditingController controller;
  final TextInputType type;
  String? hint;

  InputText({super.key, required this.controller, required this.type, this.hint});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InputTextState();
  }

}
class InputTextState extends State<InputText>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      designSize: const Size(392, 783),
      child: Container(
        alignment: Alignment.center,
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.white,
        ),
        child: TextField(
          style:AppTextStyle.button3.copyWith(color: AppColors.black),
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hint??"",
            contentPadding: EdgeInsets.only(right: 20.w,left: 20.w,bottom: 5.h)
          ),
          onTap: () {
            if (widget.controller.selection ==
                TextSelection.fromPosition(TextPosition(
                    offset: widget.controller.text.length - 1))) {
              setState(() {
                widget.controller.selection = TextSelection.fromPosition(
                    TextPosition(offset: widget.controller.text.length));
              });
            }
          },
          keyboardType: widget.type,
          textDirection: TextDirection.ltr,
          controller: widget.controller,
        ),
      ),
    );
  }

}