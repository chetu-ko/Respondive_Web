import 'package:flutter/material.dart';

class DrawerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: height * 0.2,
          child: DrawerHeader(
            child: Row(
              children: [
                Icon(Icons.battery_alert_outlined, size: 15),
                SizedBox(width: 10),
                Text(
                  "TenderFarm",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () => {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(milliseconds: 100),
                content: Text("Company")))
          },
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.home, size: 15),
                SizedBox(width: 10),
                Text(
                  "Company",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () => {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(milliseconds: 100),
                content: Text("Explore")))
          },
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.search, size: 15),
                SizedBox(width: 10),
                Text(
                  "Explore",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () => {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(milliseconds: 100),
                content: Text("Notfication")))
          },
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.notifications, size: 15),
                SizedBox(width: 10),
                Text(
                  "Notfication",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () => {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(milliseconds: 100),
                content: Text("Messages")))
          },
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.message, size: 15),
                SizedBox(width: 10),
                Text(
                  "Messages",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
