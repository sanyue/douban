import 'package:flutter/material.dart';

class SYSubject extends StatefulWidget {
  @override
  _SYSubjectState createState() => _SYSubjectState();
}

class _SYSubjectState extends State<SYSubject> {

  @override
  void initState() {
    super.initState();
    print('书影音初始化方法...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('书影音'),
      ),
      body: Center(child: Text('Subject-->书影音'),),
    );
  }
}
