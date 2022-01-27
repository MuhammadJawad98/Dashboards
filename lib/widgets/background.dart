import 'package:dashboards/utils/app_colors.dart';
import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(
            flex: 3,
            child: Container(
              color: AppColors.purpleColor,
            )),
        Expanded(
            flex: 7,
            child: Container(
              color: AppColors.lightBlueColor,
            )),
      ],
    );
  }
}
