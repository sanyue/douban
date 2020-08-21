import 'package:flutter/material.dart';
import 'bottom_bar_item.dart';
import '../home/home.dart';
import '../subject/subject.dart';
import '../group/group.dart';
import '../mall/mall.dart';
import '../profile/profile.dart';

List<SYBottomBarItem> items = [
  SYBottomBarItem('首页','home'),
  SYBottomBarItem('书影音','subject'),
  SYBottomBarItem('小组','group'),
  SYBottomBarItem('市集','mall'),
  SYBottomBarItem('我的','profile'),
];

List<Widget> pages = [
  SYHome(),
  SYSubject(),
  SYGroup(),
  SYMall(),
  SYProfile()
];



