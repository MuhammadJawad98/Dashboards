import 'package:dashboards/utils/app_colors.dart';
import 'package:dashboards/utils/constants.dart';
import 'package:dashboards/utils/image_assets.dart';
import 'package:dashboards/views/team_members.dart';
import 'package:dashboards/widgets/background.dart';
import 'package:dashboards/widgets/custom_button.dart';
import 'package:dashboards/widgets/custom_card.dart';
import 'package:dashboards/widgets/custom_text.dart';
import 'package:dashboards/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
class ContentView extends StatelessWidget {
   ContentView({Key? key}) : super(key: key);
final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
     const Background(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [

                  SizedBox(width: 300, child: CustomTextField(controller: controller,)),
                  const Spacer(),
                  CustomButton(icon: Icons.home, title: 'Documentation', onPressed: (){}, backgroundColor: AppColors.greenColor),
                  const SizedBox(width: 10,),
                  CustomButton(icon: Icons.shopping_cart, title: 'Purchase Now', onPressed: (){}, backgroundColor: AppColors.purpleColor),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,color: AppColors.whiteColor,)),
                  const SizedBox(width: 5,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.copy,color: AppColors.whiteColor,)),
                  const SizedBox(width: 5,),
                  const CircleAvatar(backgroundImage: NetworkImage(Constants.userImage),),
                  const SizedBox(width: 5,),
                  const CustomText( text: 'Muhammad Jawad',color: AppColors.whiteColor,)


                ],
              ),
              const SizedBox(height: 20,),
              Row(children:  [
                const CustomText(text: 'Default',fontSize: 20,color: AppColors.whiteColor,),
                const SizedBox(width: 15,),
                const Icon(Icons.home,color: AppColors.whiteColor,size: 14,),
                const SizedBox(width: 15,),
                const CustomText(text: 'Dashboard',fontSize: 14,color: AppColors.whiteColor,),
                const SizedBox(width: 10,),
                const CustomText(text: 'Default',fontSize: 14,color: AppColors.whiteColor,),
                const Spacer(),
                CustomButton(title: 'New', onPressed: (){}, backgroundColor: AppColors.purpleColor),
                const SizedBox(width: 5,),
                CustomButton(title: 'Filter', onPressed: (){}, backgroundColor: AppColors.purpleColor)
              ],),
              const SizedBox(height: 20.0,),
              Wrap(children: const [
                CustomCard(title: 'TOTAL TRAFFIC', subTitle: '350,897', percentage: '3.48%', iconBgColor: AppColors.redAccentColor,icon: MaterialCommunityIcons.cursor_default_click,),
                CustomCard(title: 'NEW USERS', subTitle: '2,356', percentage: '3.48%', iconBgColor: AppColors.orangeColor,icon: AntDesign.piechart,),
                CustomCard(title: 'SALES', subTitle: '924', percentage: '3.48%', iconBgColor: AppColors.greenColor,icon: Fontisto.database,),
                CustomCard(title: 'PERFORMANCE', subTitle: '4,965%', percentage: '3.48%', iconBgColor: AppColors.blueColor,icon: Entypo.bar_graph,),
              ],),
              const SizedBox(height: 20.0,),
              Row(children: [
                Expanded(flex:5,child: Container(height: 300,color: AppColors.blueColor,)),
                Expanded(flex:3,child: Container(height: 300,color: AppColors.redAccentColor,)),
              ],),
              const SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  TeamMembersView(),
                  SizedBox(width: 10.0,),
                  TeamMembersView(),
                  SizedBox(width: 10.0,),
                  TeamMembersView(),
              ],),
            ],
          ),
        ),
      ),
    ]);
  }
}
