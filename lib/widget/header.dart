import 'package:flutter/material.dart';
import 'package:responsive_panel/Conroller/menucontroller.dart';
import 'package:responsive_panel/Constant/app_constant.dart';
import 'package:responsive_panel/responsive_widget.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Resposnive.isdesktop(context))
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        SizedBox(
          width: 10,
        ),
        if (!Resposnive.ismobile(context))
          Text(
            "Best Tenders",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
          ),
        if (!Resposnive.ismobile(context))
          Spacer(flex: Resposnive.isdesktop(context) ? 2 : 1),
        if (!Resposnive.ismobile(context))
          Row(
            children: [
              Text(
                "6",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              if (!Resposnive.ismobile(context))
                Icon(
                  Icons.notification_important_rounded,
                  size: 18,
                  color: Colors.black87,
                ),
            ],
          ),
        SizedBox(
          width: 5,
        ),
        Expanded(child: SearchField()),
        SizedBox(
          width: 5,
        ),
        Profilecard(),
      ],
    );
  }
}

class Profilecard extends StatelessWidget {
  const Profilecard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(milliseconds: 100), content: Text("Profile")))
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 0.1),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Row(
          children: [
            Icon(Icons.person, color: Colors.black87),
            SizedBox(width: 5),
            Text(
              "David",
              style: TextStyle(color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: Colors.grey[300],
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
        ),
        suffixIcon: InkWell(
          onTap: () => {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(milliseconds: 100), content: Text("Search")))
          },
          child: Container(
              padding: EdgeInsets.all(defaultPadding * 0.4),
              margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: const BorderRadius.all(Radius.circular(40)),
              ),
              child: Icon(Icons.search_outlined)),
        ),
      ),
    );
  }
}
