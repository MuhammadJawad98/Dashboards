import 'package:dashboards/utils/app_colors.dart';
import 'package:dashboards/utils/image_assets.dart';
import 'package:dashboards/widgets/custom_expansion_tile.dart';
import 'package:dashboards/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  AssetsImages.logoBlue,
                  width: 120,
                ),
                const Spacer(),
                const Icon(Icons.menu),
              ],
            ),
            const CustomExpansionTile(
              title: 'Dashboard',
              iconData: Icons.home,
              childList: ['Dashboard', 'Alternative'],
            ),
            const CustomExpansionTile(
              title: 'Dashboard',
              iconData: Fontisto.laravel,
              textColor: AppColors.redAccentColor,
              childList: [
                'Profile',
                'Role Management',
                'User Management',
                'Category Management',
                'Tag Management',
                'Item Management'
              ],
            ),
            const CustomListTile(
              leadingIconData: Foundation.page,
              leadingIconColor: AppColors.amberAccentColor,
              title: 'Pages',
              isTrailingActive: true,
            ),
            const CustomListTile(
              leadingIconData: Foundation.page,
              leadingIconColor: AppColors.blueColor,
              title: 'Components',
              isTrailingActive: true,
            ),
            const CustomListTile(
              leadingIconData: AntDesign.form,
              leadingIconColor: AppColors.pinkAccentColor,
              title: 'Forms',
              isTrailingActive: true,
            ),
            const CustomListTile(
              leadingIconData: Feather.align_left,
              leadingIconColor: AppColors.blackColor,
              title: 'Tables',
              isTrailingActive: true,
            ),
            const CustomListTile(
              leadingIconData: Entypo.map,
              leadingIconColor: AppColors.blueColor,
              title: 'Maps',
              isTrailingActive: true,
            ),
            const CustomListTile(
              leadingIconData: Entypo.folder,
              leadingIconColor: AppColors.blueColor,
              title: 'Widgets',
            ),
            const CustomListTile(
              leadingIconData: FontAwesome.pie_chart,
              leadingIconColor: AppColors.blueColor,
              title: 'Charts',
            ),
            const CustomListTile(
              leadingIconData: AntDesign.calendar,
              leadingIconColor: AppColors.redAccentColor,
              title: 'Calenders',
            ),
          ],
        ),
      )),
    );
  }
}
