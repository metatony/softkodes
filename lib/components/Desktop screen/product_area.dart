// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'brand_section.dart';
import 'desktop_product.dart';

class DesktopProductArea extends StatelessWidget {
  const DesktopProductArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 51,
        left: 104,
        right: 148,
      ),
      width: double.infinity,
      color: Color(0xffD9D9D9),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(bottom: 125),
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 31, right: 99, top: 10, bottom: 10),
                width: double.infinity,
                height: 124,
                color: Color.fromRGBO(255, 255, 255, 1),
                child: BrandSection(),
              ),
              SizedBox(height: 39),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 51,
                  runSpacing: 51,
                  children: [for (int i = 1; i < 9; i++) DesktopProductCard()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
