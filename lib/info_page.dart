import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final String title;
  final String description; // Add a field for the description

  const InfoPage({super.key, required this.title, required this.description});

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
              description, // Display the description here
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}


class LondonPage extends StatelessWidget {
  const LondonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('London'),
      ),
      backgroundColor: const Color.fromARGB(255, 223, 198, 229),
      body: const Column(
        children: [
          Padding(padding: EdgeInsets.all(10)) ,
          Text('An Amazing Place'),
          Text(''),
          Text('London, the capital city of England, is one of the worlds most visited cities in terms of international visits. It is home to an array of notable tourist attractions, attracting 20.42 million international visitors in 2018,[1] an additional 27.8 million overnighting domestic tourists in 2017, and 280 million day-trippers in 2015')
        ],
      ),
    );
  }
}

class NewYorkPage extends StatelessWidget {
  const NewYorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New York'),
      ),
      backgroundColor: const Color.fromARGB(255, 223, 198, 229),
      body: const Column(
        children: [
          Padding(padding: EdgeInsets.all(10)) ,
          Text('An Amazing Place'),
          Text(''),
          Text('New York City has over 28,000 acres (110 km2) of parkland and 14 linear miles (22 km) of public beaches. Manhattans Central Park, designed by Frederick Law Olmsted and Calvert Vaux, is the most visited city park in the United States.'),
        ],
      ),
    );
  }
}
class ParisPage extends StatelessWidget {
  const ParisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paris'),
      ),
      backgroundColor: const Color.fromARGB(255, 223, 198, 229),
      body: const Column(
        children: [
          Padding(padding: EdgeInsets.all(10)) ,
          Text('An Amazing Place'),
          Text(''),
Text('It is overwhelmed with culture, history, iconic architecture, arty treasures, delicious food and exciting fashion. Europes most enchanting city, Paris is known for its many monuments, especially the Eiffel Tower, Notre-Dame Cathedral, Arc de Triomphe, Opéra Garnier, Les Invalides, etc.'),        ],
      ),
    );
  }
}

class RomePage extends StatelessWidget {
  const RomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rome'),
      ),
      backgroundColor: const Color.fromARGB(255, 223, 198, 229),
      body: const Column(
        children: [
          Padding(padding: EdgeInsets.all(10)) ,
          Text('An Amazing Place'),
          Text(''),
Text('Rome was called the “Eternal City” by the ancient Romans because they believed that no matter what happened in the rest of the world, the city of Rome would always remain standing. Exploring the city centre by foot surrounded by glorious monuments and colossal remains takes you back in time to the glory that was Rome.'),        ],
      ),
    );
  }
}
