import 'package:devstream/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(left: 15),
        children: [
          DrawerHeader(
              child: ListTile(
            leading: Icon(Icons.close),
            trailing: Image.asset(
              'dev/file.png',
              color: BrandColors.buttonColor,
            ),
          )),
          ListTile(title: const Text('Sign In'), onTap: () {}),
          ListTile(title: const Text('Recent visited'), onTap: () {}),
          ListTile(title: const Text('Frequently visited'), onTap: () {}),
          ListTile(title: const Text('My Profil'), onTap: () {}),
          ListTile(title: const Text('About'), onTap: () {}),
          ListTile(title: const Text('Request for Verification'), onTap: () {}),
          Container(
              child: Stack(
            children: [
              Image.asset('dev/drawer_button.png'),
              Positioned(
                  top: 9,
                  left: 30,
                  child: Column(
                    children: [
                      const Text(
                        "+ Let's add your business",
                        style: TextStyle(color: BrandColors.buttonColor),
                      ),
                    ],
                  ))
            ],
          ))
        ],
      ),
    );
  }
}
