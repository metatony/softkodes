// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(10.r),
      child: Container(
        padding: EdgeInsets.symmetric(
            //vertical: 20.h,
            ),
        height: 67.h,
        width: 368.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 250.w,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 22.h,
                  ),
                  hintText: 'Search for a product',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15.sp),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 25.h),
                ),
              ),
            ),
            VerticalDivider(
              indent: 21.h,
              endIndent: 22.h,
              thickness: 1,
              color: Colors.black,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color.fromARGB(255, 201, 201, 201),
            ),
            //.w)
          ],
        ),
      ),
    );
  }
}
