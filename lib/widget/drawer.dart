import 'package:flutter/material.dart';
import 'package:responsive_panel/widget/drawer_content.dart';

class DrawerPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          //width: 100,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.lightBlueAccent[100],
                Colors.lightBlueAccent[400],
              ],
            ),
          ),
          child: Column(
            children: [
              DrawerContent(),
              SizedBox(height: height * 0.2),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: Theme.of(context)
                          .secondaryHeaderColor
                          .withOpacity(0.1),
                      onPressed: () => {},
                      child: Icon(Icons.settings),
                    ),
                    MaterialButton(
                      color: Theme.of(context)
                          .secondaryHeaderColor
                          .withOpacity(0.1),
                      onPressed: () => {},
                      child: Icon(Icons.people),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
