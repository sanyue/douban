import 'package:flutter/material.dart';

import '../home/home.dart';
import '../subject/subject.dart';
import '../group/group.dart';
import '../mall/mall.dart';
import '../profile/profile.dart';

class SYMall extends StatefulWidget {
  @override
  _SYMallState createState() => _SYMallState();
}

class _SYMallState extends State<SYMall> {

  @override
  void initState() {
    super.initState();
    print('市集初始化方法...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('市集'),
      ),
      body: Center(child: Text('mall-->市集'),),
    );
  }
}
