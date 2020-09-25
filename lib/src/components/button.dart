import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget btnTextField({String text}) => Container(
      height: 45,
      width: 100,
      alignment: Alignment.center,
      child: Text(text).text.white.semiBold.make(),
      decoration: BoxDecoration(
          color: Vx.blue500,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5), bottomRight: Radius.circular(5))),
    );
