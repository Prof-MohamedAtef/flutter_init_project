import 'package:flutter/material.dart';

class MyDrawer  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Mohamed Atef',
              style: TextStyle(color: Colors.red),
            ),
            accountEmail: Text(
              'proofesser@gmail.com',
              style: TextStyle(color: Colors.red),
            ),
            currentAccountPicture: Image.network(
              'https://talabstation.org/TalabStation/Dashboard-UI/images/talab-station-logo.png',
              fit: BoxFit.contain,
            ),
            decoration: BoxDecoration(color: Colors.white),
          ),
          ListTile(
            title: Text(
              'الصفحة الرئيسية',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'الأقسام',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            leading: Icon(
              Icons.category,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('categories');
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text(
              'حول التطبيق',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            leading: Icon(
              Icons.category,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'الإعدادات',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            leading: Icon(
              Icons.category,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'تسجيل الخروج',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            leading: Icon(
              Icons.category,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}