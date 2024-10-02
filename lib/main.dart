
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
                textColor: const Color.fromARGB(255, 223, 198, 229),
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
                textColor: const Color.fromARGB(255, 223, 198, 229),
                title: const Text('About Me'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutMePage(),
                    ),
                  );
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
                    }, description: 'London, the capital city of England, is one of the worlds most visited cities in terms of international visits. It is home to an array of notable tourist attractions, attracting 20.42 million international visitors in 2018,[1] an additional 27.8 million overnighting domestic tourists in 2017, and 280 million day-trippers in 2015', imagePath: 'assets/images/london.jpg',
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
                    }, description: 'New York City has over 28,000 acres (110 km2) of parkland and 14 linear miles (22 km) of public beaches. Manhattans Central Park, designed by Frederick Law Olmsted and Calvert Vaux, is the most visited city park in the United States.', imagePath: 'assets/images/newyork.jpg',
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
                    }, description: 'It is overwhelmed with culture, history, iconic architecture, arty treasures, delicious food and exciting fashion. Europes most enchanting city, Paris is known for its many monuments, especially the Eiffel Tower, Notre-Dame Cathedral, Arc de Triomphe, Opéra Garnier, Les Invalides, etc.', imagePath: 'assets/images/paris.jpg',
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
                    }, description: 'Rome was called the “Eternal City” by the ancient Romans because they believed that no matter what happened in the rest of the world, the city of Rome would always remain standing. Exploring the city centre by foot surrounded by glorious monuments and colossal remains takes you back in time to the glory that was Rome.', imagePath: 'assets/images/rome.jpg',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // Destination Tiles Section
          Expanded(
            child: ListView(
              children: const [
                DestinationTile(
                  title: 'London',
                  imagePath: 'assets/images/london.jpg',
                  description: 'London, the capital city of England, is one of the worlds most visited cities in terms of international visits. It is home to an array of notable tourist attractions, attracting 20.42 million international visitors in 2018,[1] an additional 27.8 million overnighting domestic tourists in 2017, and 280 million day-trippers in 2015',
                  detailedInfo: 'London offers attractions such as the British Museum...',
                ),
                DestinationTile(
                  title: 'New York',
                  imagePath: 'assets/images/new_york.jpg',
                  description: 'New York City has over 28,000 acres (110 km2) of parkland and 14 linear miles (22 km) of public beaches. Manhattans Central Park, designed by Frederick Law Olmsted and Calvert Vaux, is the most visited city park in the United States.',
                  detailedInfo: 'Top sights in New York include the Empire State Building...',
                ),
                DestinationTile(
                  title: 'Paris',
                  imagePath: 'assets/images/paris.jpg',
                  description: 'It is overwhelmed with culture, history, iconic architecture, arty treasures, delicious food and exciting fashion. Europes most enchanting city, Paris is known for its many monuments, especially the Eiffel Tower, Notre-Dame Cathedral, Arc de Triomphe, Opéra Garnier, Les Invalides, etc.',
                  detailedInfo: 'Visitors to Paris can enjoy the Eiffel Tower, the Louvre...',
                ),
                DestinationTile(
                  title: 'Rome',
                  imagePath: 'assets/images/rome.jpg',
                  description: 'Rome was called the “Eternal City” by the ancient Romans because they believed that no matter what happened in the rest of the world, the city of Rome would always remain standing. Exploring the city centre by foot surrounded by glorious monuments and colossal remains takes you back in time to the glory that was Rome.',
                  detailedInfo: 'Rome is famous for the Colosseum, the Vatican...',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// DashboardCell now opens the InfoPage directly, just like the "Information" button
class DashboardCell extends StatelessWidget {
  final String title;
  final String description; // Add description
  final String imagePath; // Add image path for more details

  const DashboardCell({
    super.key,
    required this.title,
    required this.description, // Pass description
    required this.imagePath, required Null Function() onTap, // Pass imagePath
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoPage(
              title: title,
              description: description, // Pass the same description
            ),
          ),
        );
      },
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
  final String description; // Add a description for the destination
  final String detailedInfo; // Add detailed info for the "Know More" button

  const DestinationTile({
    super.key,
    required this.title,
    required this.imagePath,
    required this.description, // Pass the description
    required this.detailedInfo, // Pass detailed info
  });

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
                            builder: (context) => InfoPage(
                              title: title,
                              description: description, // Pass the description
                            ),
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
                            builder: (context) => MoreInfoPage(
                              title: title,
                              detailedInfo: detailedInfo, // Pass detailed info
                            ),
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
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
      ),
      backgroundColor: const Color.fromARGB(255, 223, 198, 229),
      body: const Center(
        child: Text('Settings Page - under construction!'),
      ),
    );
  }
}

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
      ),
      backgroundColor: const Color.fromARGB(255, 223, 198, 229),
      body: const Center(
        child: Text('A small Flutter Demonstration Made By Aditya Vasipalli!'),
      ),
    );
  }
}
