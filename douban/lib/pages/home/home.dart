import 'package:flutter/material.dart';
import 'home_content.dart';

class SYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('电影Top250'),
      ),
      body: SYHomeContent(),
    );
  }
}
