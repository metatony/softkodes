// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softkodes/models/product_list.dart';

class SearchBar extends StatefulWidget {
  SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}
 String dropDownValue = 'adidas';
 

class _SearchBarState extends State<SearchBar> {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
                ),
              ),
            ),
            VerticalDivider(
              indent: 21.h,
              endIndent: 22.h,
              thickness: 1,
              color: Colors.black,
            ),
        
            DropdownButton(
              underline: Container(),
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Color.fromARGB(255, 201, 201, 201),
              ),
              items: List.generate(dropDownList.length, (index) {
                return DropdownMenuItem(
                  
                  value: dropDownValue,
                  child: Text(dropDownList[index]),
                );
              }),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValue = newValue!;
                });
              },
            ),
        
            //.w)
          ],
        ),
      ),
    );
  }
}
