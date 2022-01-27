import 'package:dashboards/utils/app_colors.dart';
import 'package:dashboards/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.percentage,
      required this.iconBgColor,
      required this.icon})
      : super(key: key);
  final String title;
  final String subTitle;
  final String percentage;
  final Color iconBgColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: title,
                    color: AppColors.blackColor,
                  ),
                  CustomText(
                    text: subTitle,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        color: AppColors.greenColor,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: percentage,
                        color: AppColors.greenColor,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const CustomText(
                        text: 'Since Last Month',
                        color: AppColors.blackColor,
                        fontSize: 14,
                      ),
                    ],
                  )
                ],
              )),
              CircleAvatar(
                backgroundColor: iconBgColor,
                child: Icon(
                  icon,
                  color: AppColors.whiteColor,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
