import 'package:dashboards/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.icon,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    this.primaryColor = AppColors.whiteColor,
  }) : super(key: key);
  final IconData? icon;
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    var style = ElevatedButton.styleFrom(
      primary: primaryColor,
      onPrimary: backgroundColor, // foreground
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      // textStyle: TextStyle(color: Colors.green)
    );
    return icon == null
        ? ElevatedButton(child: Text(title), onPressed: onPressed, style: style)
        : ElevatedButton.icon(
            onPressed: onPressed,
            style: style,
            icon: Icon(icon),
            label: Text(title));
  }
}
