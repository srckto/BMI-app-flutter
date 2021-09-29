// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const Color k_Swatch_1 = Color(0xffd5d6d7);
const Color k_Swatch_2 = Color(0xffb9c3c9);
const Color k_Swatch_3 = Color(0xff2ca1bc);
const Color k_Swatch_4 = Color(0xff727789);
const Color k_Swatch_5 = Color(0xff4d5468);

BoxDecoration k_boxDecoration = BoxDecoration(
  color: k_Swatch_2,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      color: Colors.white,
      blurRadius: 5,
      offset: Offset(-3.5, -2.8),
      spreadRadius: 0.2,
    ),
    BoxShadow(
      color: Colors.black45,
      blurRadius: 6,
      offset: Offset(1, 2),
      spreadRadius: 0.2,
    ),
  ],
);


