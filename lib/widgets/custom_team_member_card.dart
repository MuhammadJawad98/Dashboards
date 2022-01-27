import 'package:dashboards/utils/app_colors.dart';
import 'package:dashboards/utils/image_assets.dart';
import 'package:dashboards/widgets/custom_button.dart';
import 'package:dashboards/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomMemberListTile extends StatelessWidget {
  const CustomMemberListTile(
      {Key? key,
      required this.isOnline,
      required this.text,
      required this.imageUrl})
      : super(key: key);
  final bool isOnline;
  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 30,
          ),
          title: CustomText(text: text),
          subtitle: Row(
            children: [
              CircleAvatar(
                backgroundColor:
                    isOnline ? AppColors.greenColor : AppColors.redAccentColor,
                radius: 3,
              ),
              const SizedBox(
                width: 10,
              ),
              CustomText(
                text: isOnline ? 'Online' : 'Offline',
                fontSize: 10,
              )
            ],
          ),
          trailing: CustomButton(
            onPressed: () {},
            backgroundColor: AppColors.whiteColor,
            title: 'Add',
            primaryColor: AppColors.purpleColor,
          ),
        ),
        const Divider(
          thickness: 0.6,
        ),
      ],
    );
  }
}
