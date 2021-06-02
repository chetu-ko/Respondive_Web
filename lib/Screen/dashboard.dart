import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_panel/Constant/app_constant.dart';
import 'package:responsive_panel/responsive_widget.dart';
import "package:responsive_panel/widget/header.dart";
import 'package:responsive_panel/widget/dashboard_content.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: 5),
            Container(
              color: Colors.black,
              height: 1,
              width: width * 0.98,
            ),
            SizedBox(height: 20),
            Dashboardcontent(
              count: Resposnive.ismobile(context) ? 2 : 3,
            ),
          ],
        ),
      ),
    );
  }
}
