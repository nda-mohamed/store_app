import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/profile_item.dart';
import 'package:store_app/signin_screen/signin_screen.dart';
import '../core/appcolor/appColor.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switchDefaultValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        leading: SizedBox.shrink(),
        backgroundColor: Colors.grey.shade50,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 24,
            color: AppColor.orange,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItem(startIcon: Icons.person, text: 'Edit Profile'),
          ProfileItem(startIcon: Icons.key, text: 'Change Password'),
          ProfileItem(startIcon: Icons.credit_card, text: 'My Cards'),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'App Settings',
              style: TextStyle(
                fontSize: 24,
                color: AppColor.orange,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          SwitchListTile(
            secondary: Icon(
              Icons.notifications,
              color: AppColor.brown,
              size: 23,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 18,
                color: AppColor.brown,
                fontWeight: FontWeight.w700,
              ),
            ),
            value: switchDefaultValue,
            onChanged: (value) {
              setState(() {
                switchDefaultValue = value;
              });
            },
            activeTrackColor: AppColor.orange,
            inactiveTrackColor: Colors.white,
            inactiveThumbColor: AppColor.brown,
          ),

          ProfileItem(
            startIcon: Icons.language,
            text: 'Language',
            endIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'English',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.brown,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(width: 5),

                Icon(Icons.arrow_forward_ios, color: AppColor.brown, size: 18),
              ],
            ),
          ),

          ProfileItem(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SigninScreen()),
              );
            },
            startIcon: Icons.logout_rounded,
            text: 'Logout',
            endIcon: SizedBox(),
          ),
        ],
      ),
    );
  }
}
