import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      required this.title,
      required this.leadingIconData,
      this.isTrailingActive = false,
      required this.leadingIconColor,
      this.trailingIconData = Ionicons.chevron_forward_outline})
      : super(key: key);
  final String title;
  final IconData leadingIconData;
  final Color leadingIconColor;
  final IconData trailingIconData;
  final bool isTrailingActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        leadingIconData,
        color: leadingIconColor,
      ),
      title: Text(title),
      trailing: isTrailingActive ? Icon(trailingIconData) : const SizedBox(),
    );
  }
}
