import 'package:flutter/material.dart';
import 'info_page.dart';
import 'more_info_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Travel Guide',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Guide'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
      ),
      backgroundColor: const Color.fromARGB(255, 223, 198, 229),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                textColor: Colors.purple,
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
              ),
              ListTile(
                textColor: Colors.purple,
                title: const Text('About Me'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const AboutMePage(),// Close the drawer
                  ),
                  );// Implement the about me functionality here
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          // Dashboard Section
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blueGrey[200],
            height: 120, // Adjusted height for the dashboard
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: DashboardCell(
                    title: 'London',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LondonPage(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: DashboardCell(
                    title: 'New York',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewYorkPage(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: DashboardCell(
                    title: 'Paris',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ParisPage(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: DashboardCell(
                    title: 'Rome',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RomePage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                DestinationTile(
                  title: 'London',
                  imagePath: 'assets/images/london.jpg',
                ),
                DestinationTile(
                  title: 'New York',
                  imagePath: 'assets/images/new_york.jpg',
                ),
                DestinationTile(
                  title: 'Paris',
                  imagePath: 'assets/images/paris.jpg',
                ),
                DestinationTile(
                  title: 'Rome',
                  imagePath: 'assets/images/rome.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardCell extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DashboardCell({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(8.0),
        color: Colors.blue[100],
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class DestinationTile extends StatelessWidget {
  final String title;
  final String imagePath;

  const DestinationTile({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Container(
            color: Colors.black54,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoPage(title: title),
                          ),
                        );
                      },
                      child: const Text('Information'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MoreInfoPage(title: title),
                          ),
                        );
                      },
                      child: const Text('Know More'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text('Settings Page - under construction!'),
      ),
    );
  }
}

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: const Center(
        child: Text('A small Flutter Demonstration Made By Aditya Vasipalli!'),
      ),
    );
  }
}
