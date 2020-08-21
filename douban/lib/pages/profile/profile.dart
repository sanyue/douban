import 'package:flutter/material.dart';

class SYProfile extends StatefulWidget {
  @override
  _SYProfileState createState() => _SYProfileState();
}

class _SYProfileState extends State<SYProfile> {

  @override
  void initState() {
    super.initState();
    print('我的初始化方法...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: Center(child: Text('Profile-->我的'),),
    );
  }
}
