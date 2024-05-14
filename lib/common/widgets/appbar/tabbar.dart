import 'package:flutter/material.dart';
import 'package:project4_ngotband_quadat/utils/constants/colors.dart';
import 'package:project4_ngotband_quadat/utils/device/device_utility.dart';
import 'package:project4_ngotband_quadat/utils/helpers/helper_functions.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget{
  const MyTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Material(
      color: dark? MyColors.dark : MyColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: MyColors.primary,
        unselectedLabelColor: MyColors.darkGrey,
        labelColor: dark ? MyColors.white : MyColors.primary,
        tabs: tabs,),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppBarHeight());
}