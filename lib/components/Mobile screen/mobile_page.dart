// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:softkodes/components/product_card.dart';
import 'package:softkodes/components/search_bar.dart';
import 'package:softkodes/models/product_list.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 71),
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
                        children: const [
                          SizedBox(
                            child: Center(
                              child: Text(
                                'My Products',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Positioned(top: -15, child: SearchBar())
                        ],
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(top: 32, left: 32, right: 32),
                width: double.infinity,
                color: Color(0xffD9D9D9),
                child: GridView.count(
                  //padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  childAspectRatio: 0.76,
                  crossAxisCount: 2,
                  crossAxisSpacing: 44,
                  mainAxisSpacing: 37,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
