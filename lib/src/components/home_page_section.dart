import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:codeless/src/global/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'button.dart';

Widget introSection() {
  return Stack(
    children: [
      Positioned(
          right: 0, width: 300, child: Image.asset("assets/images/ani.gif")),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TypewriterAnimatedTextKit(
            repeatForever: true,
            speed: Duration(milliseconds: 200),
            text: ["Build App UIs and Websites 10x Faster"],
            textStyle: TextStyle(
                color: Vx.gray400, fontSize: 40, fontWeight: FontWeight.bold),
          ).p(20),
          "Create Flutter UIs visually with our design to code converter and"
              .text
              .gray400
              .size(20)
              .make(),
          "templete builder. Signup for a spot in the beta!"
              .text
              .gray400
              .size(20)
              .make()
              .p8(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Vx.white,
                      filled: true,
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 10, color: Vx.gray400),
                      ),
                      hintText: "Enter your email...",
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Vx.gray100,
                              width: 20),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(0),
                              bottomRight: Radius.circular(0)))),
                ),
              ),
              btnTextField(text: "SUBMIT")
            ],
          ).p(20),
          Stack(children: [
            Positioned(
                bottom: 0,
                top: 0,
                child: Image.asset(
                  "assets/images/waves.png",
                  scale: 0.4,
                )),
            Image(image: AppImages.desktop),
            Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Image(image: AppImages.card)),
          ])
        ],
      ),
    ],
  );
}
