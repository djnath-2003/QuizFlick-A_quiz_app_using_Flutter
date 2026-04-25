import 'package:flutter/material.dart';

import '/controllers/theme_provider.dart';
import 'package:get/get.dart';
// import 'theme_controller.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Drawer(
      child: Material(
        color: Color.fromRGBO(54, 102, 245, 0.858),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "username@101",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "0 coins",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Leaderboard - 999th Rank",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 48),
            listItem(
              label: "DAILY QUIZ",
              icon: Icons.quiz,
            ),
            listItem(
              label: "Leaderboard",
              icon: Icons.leaderboard,
            ),
            listItem(
              label: "How To Use",
              icon: Icons.question_answer,
            ),
            listItem(
              label: "About Us",
              icon: Icons.face,
            ),
            listItem(
              label: "Contact Us",
              icon: Icons.contact_page,
            ),
            listItem(
              label: "Terms & Conditions",
              icon: Icons.rule,
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(Icons.palette, color: Colors.white),
              title: Text(
                'Toggle Theme',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                themeController.toggleTheme();
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget listItem({
    required String label,
    required IconData icon,
  }) {
    final color = Colors.white;
    final hovercolor = Colors.white60;

    return ListTile(
      leading: Icon(icon, color: color),
      hoverColor: hovercolor,
      title: Text(label, style: TextStyle(color: color)),
      onTap: () {},
    );
  }
}
