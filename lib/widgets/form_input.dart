
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    super.key, required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.r),
      elevation: 5,
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 29.h, horizontal: 49.w),
            hintText: hint,
            hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
            border: InputBorder.none),
      ),
    );
  }
}