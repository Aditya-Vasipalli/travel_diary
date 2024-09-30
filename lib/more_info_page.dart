import 'package:flutter/material.dart';

class MoreInfoPage extends StatelessWidget {
  final String title;

  const MoreInfoPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More About $title'),
      ),
      body: Center(
        child: Text('More information about $title will go here.'),
      ),
    );
  }
}
