import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final String title;

  const InfoPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Information about $title',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
