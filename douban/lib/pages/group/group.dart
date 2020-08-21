import 'package:flutter/material.dart';

class SYGroup extends StatefulWidget {
  @override
  _SYGroupState createState() => _SYGroupState();
}

class _SYGroupState extends State<SYGroup> {

  @override
  void initState() {
    super.initState();
    print('小组初始化方法...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小组'),
      ),
      body: Center(child: Text('Group-->小组'),),
    );
  }
}
