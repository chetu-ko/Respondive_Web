import 'package:flutter/material.dart';
import 'package:responsive_panel/Screen/dashboard.dart';
import 'package:responsive_panel/widget/drawer.dart';
import 'package:responsive_panel/Conroller/menucontroller.dart';

import '../responsive_widget.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: DrawerPanel(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Resposnive.isdesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: DrawerPanel(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
