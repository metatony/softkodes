// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'catalogue.dart';
import 'desktop_search_bar.dart';
import 'product_area.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 29,),
                                Center(
                                  child: Text(
                                    'My Products',
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 28,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 104, right: 148),
                                  child: Row(children: [
                                    for (int i = 1; i < 7; i++)
                                      Expanded(
                                          child: Catalogue(
                                              title: 'Converse Shoes'))
                                  ]),
                                )
                              ],
                            ),
                          ),
                          Positioned(top: -35, child: DesktopSearchBar())
                        ],
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 2,
              child: DesktopProductArea(),
            ),
          ],
        ),
      ),
    );
  }
}
