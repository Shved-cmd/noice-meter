import 'package:flutter/material.dart';
import 'package:wddqawdqd/bottom_bar/bottom_bar.dart';

class Info extends StatelessWidget {
   const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('Info')),
      bottomNavigationBar:  BottomBar(),
    );
  }
}