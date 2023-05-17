// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        height: 67,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              padding: EdgeInsets.only(right: 5),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for a product',
                  hintStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            VerticalDivider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(width: 40),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color.fromARGB(255, 201, 201, 201),
            ),
          ],
        ),
      ),
    );
  }
}
