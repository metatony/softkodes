// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddButtton extends StatelessWidget {
  const AddButtton({super.key, required this.function});
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:const BoxConstraints(maxHeight: 42, maxWidth: 150),
      child: ElevatedButton(
        onPressed: function,
        style: ButtonStyle(
            maximumSize: MaterialStateProperty.all(const Size(150, 42)),
            backgroundColor: MaterialStateProperty.all(Color(0xffD78484))),
        child: Text(
          'Add to Cart',
        
          
        ),
      ),
    );
  }
}