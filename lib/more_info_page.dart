import 'package:flutter/material.dart';

class MoreInfoPage extends StatelessWidget {
  final String title;
  final String detailedInfo; 

  const MoreInfoPage({super.key, required this.title, required this.detailedInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
      ),
      backgroundColor: const Color.fromARGB(255, 223, 198, 229),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              detailedInfo, 
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
