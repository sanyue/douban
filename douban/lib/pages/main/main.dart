import 'package:flutter/material.dart';
import 'initialize_item.dart';

class SYMainPage extends StatefulWidget {
  @override
  _SYMainPageState createState() => _SYMainPageState();
}

class _SYMainPageState extends State<SYMainPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items:items,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

