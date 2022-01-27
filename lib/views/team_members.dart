import 'package:dashboards/models/member.dart';
import 'package:dashboards/utils/app_colors.dart';
import 'package:dashboards/utils/constants.dart';
import 'package:dashboards/widgets/custom_list_tile.dart';
import 'package:dashboards/widgets/custom_team_member_card.dart';
import 'package:dashboards/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class TeamMembersView extends StatelessWidget {
  const TeamMembersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 300,
        width: 400,
        // color: AppColors.blueColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const CustomText(text: 'Team Members',color: AppColors.blackColor,),
              const Divider(),
              ListView.builder(
                  // controller: ScrollController(),//just add this line
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: Constants.teamMemberList.length,
                  itemBuilder: (context, index) {
                    return CustomMemberListTile(
                        isOnline: Constants.teamMemberList[index].isActive,
                        text: Constants.teamMemberList[index].name,
                    imageUrl: Constants.teamMemberList[index].imageUrl,);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
