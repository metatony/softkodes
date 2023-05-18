// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key, required this.title, this.function});

  final String title;
  final Function()? function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        //alignment: Alignment.center,
        height: 51,
        width: 178,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black, width: 1)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
