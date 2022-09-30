import 'package:flutter/material.dart';
import 'package:wddqawdqd/bottom_bar/bottom_bar.dart';


class Settings extends StatelessWidget {
   const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('Settingss')),
      bottomNavigationBar:  BottomBar(),
    );
  }
}