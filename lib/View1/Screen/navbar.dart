// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_returning_null_for_void

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Affaf"),
            accountEmail: Text(" Affaf2020@gmail"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                "images/3.jpg",
                width: 150,
                height: 90,
                fit: BoxFit.cover,
              )),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              image: DecorationImage(
                  image: AssetImage("images/2.jpg"), fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("fffav"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("fffav"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("fffav"),
            onTap: () => null,
          )
        ],
      ),
    );
  }
}
