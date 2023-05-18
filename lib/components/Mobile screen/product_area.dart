

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softkodes/components/Mobile%20screen/product_card.dart';
import 'package:softkodes/models/product_list.dart';

class ProductArea extends StatelessWidget {
  const ProductArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.h, left: 20.w, right: 33.w,),
      width: double.infinity,
      color: Color(0xffD9D9D9),
      child: GridView.count(
        padding: EdgeInsets.only(bottom: 125.h),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        childAspectRatio: 0.76,
        crossAxisCount: 2,
        crossAxisSpacing: 44.h,
        mainAxisSpacing: 37.w,
        children: [
          ...List.generate(
            productList.length,
            (index) {
              return ProductCard(
                image: productList[index]['image'],
                productTitle: productList[index]['productTitle'],
                price: productList[index]['price'],
              );
            },
          ),
        ],
      ),
    );
  }
}
