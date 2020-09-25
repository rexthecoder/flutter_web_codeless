import 'package:codeless/src/global/colors.dart';
import 'package:codeless/src/global/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget appBar(context) {
  return VxAppBar(
    
    backgroundColor: AppColors.backgroundColors,
    elevation: 0,
    title: "Codelessly".text.semiBold.white.make(),
    titleSpacing: 0,
    actions: [
      Container(
              alignment: Alignment.center,
              child: "We're Hiring 👋".text.extraBold.gray600.size(19).make())
          .h(200)
    ],
    leading: Image(
      width: 0,
      image: AppImages.companyLogo,
    ),
  );
}
