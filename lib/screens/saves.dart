import 'package:flutter/material.dart';
import 'package:wddqawdqd/bottom_bar/bottom_bar.dart';

class Saves extends StatelessWidget {
   const Saves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Text('Saves')),
       bottomNavigationBar:  BottomBar(),
    );
  }
}