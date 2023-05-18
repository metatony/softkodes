// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.productTitle,
      required this.price});

  final String image, productTitle, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221.h,
      width: 170.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          SizedBox(
            //color: Colors.green,
            width: double.infinity,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              left: 13.w,
            ),
            child: SizedBox(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 13.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 10.sp),
                    ),
                    SizedBox(height: 18.h)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
