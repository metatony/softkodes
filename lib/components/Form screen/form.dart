// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softkodes/widgets/form_input.dart';
import '../Mobile screen/search_bar.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 71.h),
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            child: Center(
                              child: Text(
                                'My Products',
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Positioned(top: -15.h, child: SearchBar())
                        ],
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                  padding: EdgeInsets.only(
                    top: 32.h,
                    left: 20.w,
                    right: 33.w,
                  ),
                  width: double.infinity,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children:  [
                        FormInput(hint: 'Fullname'),
                        SizedBox(
                          height: 32.h,
                        ),
                        FormInput(hint: 'Gender'),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
