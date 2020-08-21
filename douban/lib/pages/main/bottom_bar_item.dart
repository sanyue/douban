import 'package:flutter/material.dart';

class SYBottomBarItem extends BottomNavigationBarItem {
  SYBottomBarItem(String title, String iconName) : super(
      title:Text(title),
      icon:Image.asset('assets/images/tabbar/$iconName.png',width: 30,),
      activeIcon:Image.asset('assets/images/tabbar/${iconName}_active.png',width: 30,)
  );
}
