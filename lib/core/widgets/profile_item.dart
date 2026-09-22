import 'package:flutter/material.dart';

import '../appcolor/appColor.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.startIcon,
    required this.text,
    this.endIcon, this.onTap
  });

  final IconData startIcon;
  final String text;
  final Widget? endIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        startIcon,
        color: AppColor.brown,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: AppColor.brown,
          fontWeight: FontWeight.w700,
        ),
      ),
      trailing: endIcon ??
          Icon(
            Icons.arrow_forward_ios,
            color: AppColor.brown,
            size: 18,
          ),
    );
  }
}
