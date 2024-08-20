import 'package:flutter/material.dart';

class ProfileDataInfo extends StatelessWidget {
  final bool titleInLeft;
  final String title;
  final String? info;
  final IconData? icon;
  final Widget? widget;
  final bool isTitleStyleEditProfile;

  const ProfileDataInfo({super.key, 
    required this.title,
    this.info,
    this.icon,
    this.widget,
    this.titleInLeft = false,
    this.isTitleStyleEditProfile = false,
  });

  @override
  Widget build(BuildContext context) {
    const iconColor = Color(0xff969799);

    const titleStyleOrig = TextStyle(
        fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey);

    const infoStyle = TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black);

    const titleStyleEditProfile = TextStyle(
        fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey);

    const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey);

    TextStyle titleStyle;

    if (info == null && !isTitleStyleEditProfile) {
      titleStyle = infoStyle;
    } else if (info == null && isTitleStyleEditProfile) {
      titleStyle = titleStyleEditProfile;
    } else {
      titleStyle = titleStyleOrig;
    }

    Widget? kLeading;
    if (icon == null && !titleInLeft) {
      kLeading = const SizedBox(width: 10, height: 10);
    } else if (icon == null && titleInLeft) {
      kLeading = null;
    } else {
      kLeading = Icon(icon, color: iconColor, size: 15);
    }

    return Column(
      children: [
        ListTile(
          dense: true,
          visualDensity: VisualDensity.compact,
          minLeadingWidth: 30,
          horizontalTitleGap: 0,
          leading: kLeading,
          title: Text(title, style: titleStyle
              // this.info == null ? infoStyle : titleStyle
              ),
          subtitle:
              info == null ? null : Text(info!, style: infoStyle),
        ),
        if (widget != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: widget,
          )
      ],
    );
  }
}
