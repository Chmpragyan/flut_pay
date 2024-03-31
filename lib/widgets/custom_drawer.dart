import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          IconButton(
            alignment: Alignment.topLeft,
            icon: Icon(Icons.close), // Cross icon
            onPressed: () {
              Navigator.of(context).pop(); // Close the drawer
            },
            color: Colors.red[300],
          ),
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 25,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "John Doe",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text("johndoe@gmail.com"),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Home"),
            leading: Icon(Icons.home),
            iconColor: Colors.grey,
            trailing: Icon(Icons.arrow_back_ios),
          ),
          ListTile(
            onTap: () {},
            title: Text("Reports"),
            leading: Icon(Icons.report),
            iconColor: Colors.grey,
            trailing: Icon(Icons.arrow_back_ios),
          ),
          ListTile(
            onTap: () {},
            title: Text("Feedback"),
            leading: Icon(Icons.feedback),
            iconColor: Colors.grey,
            trailing: Icon(Icons.arrow_back_ios),
          ),
          ListTile(
            onTap: () {},
            title: Text("About"),
            leading: Icon(Icons.question_mark_rounded),
            iconColor: Colors.grey,
            trailing: Icon(Icons.arrow_back_ios),
          ),
          ListTile(
            onTap: () {},
            title: Text("Settings"),
            leading: Icon(Icons.settings),
            iconColor: Colors.grey,
            trailing: Icon(Icons.arrow_back_ios),
          ),
          SizedBox(
            height: 200,
          ),
          ListTile(
            onTap: () {},
            title: Text("Log out"),
            leading: Icon(Icons.logout),
            iconColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
