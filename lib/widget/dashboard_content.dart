import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:responsive_panel/Constant/card_data.dart';

class Dashboardcontent extends StatelessWidget {
  final int count;

  const Dashboardcontent({
    Key key,
    this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      child: GridView.builder(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        itemCount: image.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: count,
          //childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 0.5,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: width * 0.02),
                Text(
                  name[index],
                  style: TextStyle(color: Colors.black, fontSize: width * 0.0),
                ),
                SizedBox(height: width * 0.02),
                Image(
                  width: width * 0.06,
                  height: 70,
                  image: AssetImage(image[index]),
                ),
                SizedBox(width: width * 0.02),
                Center(
                  child: Text(
                    time[index],
                    style: TextStyle(
                        color: Colors.orangeAccent, fontSize: width * 0.02),
                  ),
                ),
                SizedBox(width: width * 0.02),
                Text(
                  tagname[index],
                  style:
                      TextStyle(color: Colors.black, fontSize: width * 0.015),
                ),
              ],
            ),
          );
        },
      ),
      onTap: () => {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(milliseconds: 100), content: Text("pressed")))
      },
    );
  }
}
