import 'package:flutter/material.dart';
import '../../service/home_request.dart';
import '../../model/home_model.dart';

class SYHome extends StatefulWidget {
  @override
  _SYHomeState createState() => _SYHomeState();
}

class _SYHomeState extends State<SYHome> {

  @override
  void initState() {
    super.initState();
    print('首页初始化--start');
    SYHomeRequest.requestMovieList(0);
    print('首页初始化--end');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(child: Text('Home-->首页'),),
    );
  }
}

