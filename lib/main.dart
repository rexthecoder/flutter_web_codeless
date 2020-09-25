import 'package:codeless/src/components/home_page_section.dart';
import 'package:codeless/src/global/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'src/components/appBar.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Vx.gray400,
          accentColor: Vx.gray400,
          primaryColorDark: Vx.gray400,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Vx.gray400),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Vx.blue500),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Vx.gray400),
              ))),
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale: true,
          minWidth: 480,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          background: Container(color: AppColors.backgroundColors)),
      home: Scaffold(
        backgroundColor: AppColors.backgroundColors,
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 100),
            child: appBar(context).p(20)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              ResponsiveWrapper(
                  maxWidth: 1200,
                  minWidth: 1200,
                  defaultScale: true,
                  child: ResponsiveConstraints(child: introSection())),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
