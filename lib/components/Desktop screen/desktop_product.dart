// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DesktopProductCard extends StatelessWidget {
  const DesktopProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 259,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(
            //color: Colors.green,
            width: double.infinity,
            child: Image.asset(
              'images/image1.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 13),
            child: SizedBox(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Adidas Converse',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$1200',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
