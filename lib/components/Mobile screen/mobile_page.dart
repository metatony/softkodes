// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_area.dart';
import 'search_bar.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

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
                        children:  [
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
              child: ProductArea(),
            ),
          ],
        ),
      ),
    );
  }
}

