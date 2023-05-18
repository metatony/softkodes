// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softkodes/widgets/add_button.dart';

bool addToCart = false;

class ProductCard extends StatefulWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.productTitle,
      required this.price});

  final String image, productTitle, price;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 0.40.toInt()),
      height:  221.h,
      width: 170.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(microseconds: 1),
              //height: 137.h,
              //color: Colors.green,
              width: double.infinity,
              child: Image.asset(
                widget.image,
                fit: BoxFit.fill,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  addToCart = !addToCart;
                });
              },
              child: Padding(
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
                          widget.productTitle,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          widget.price,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 10.sp),
                        ),
                        SizedBox(height: 18.h)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            addToCart ? AddButtton(function: (){}) : Container()
          ],
        ),
      ),
    );
  }
}
