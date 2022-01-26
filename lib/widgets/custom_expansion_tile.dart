import 'package:dashboards/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile(
      {Key? key,
      required this.title,
      required this.childList,
      required this.iconData,
        this.textColor=AppColors.blackColor})
      : super(key: key);
  final String title;
  final List<String> childList;
  final IconData iconData;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

    return Theme(
      data: theme,
      child: ExpansionTile(
        initiallyExpanded: true,
        leading: Icon(iconData,color: textColor,),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold,color:textColor ),
        ),
        children: childList
            .map(
              (item) => ListTile(
                leading: const SizedBox(),
                title: Text(item),
              ),
            )
            .toList(),
      ),
    );
  }
}
