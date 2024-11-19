import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String randomFact = 'Your random fact will appear here!';  // Default text

  // Function to fetch the random fact
  void fetchData() async {
    final url = 'https://uselessfacts.jsph.pl/api/v2/facts/random';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response
      var data = jsonDecode(response.body);
      setState(() {
        randomFact = data['text'];  // Update the UI with the new fact
      });
    } else {
      // If the server does not return a 200 OK response
      setState(() {
        randomFact = 'Failed to load a new fact.';  // Error message
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daily Facts',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.category),
          onPressed: () {
            // Navigate to Categories Screen
            Navigator.pushNamed(context, '/categories');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Navigate to Favorites Screen
              Navigator.pushNamed(context, '/favorites');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              randomFact,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: fetchData,
              child: Text('Get New Fact'),
            ),
          ],
        ),
      ),
    );
  }
}
