import 'package:fitness/shared/menu_drawer.dart';
import 'package:fitness/shared/menu_bottom.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      bottomNavigationBar: MenuBottom(),
      drawer: MenuDrawer(),
      body: Center(child: FlutterLogo()),
    );
  }
}
