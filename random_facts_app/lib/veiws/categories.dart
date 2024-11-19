import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<Map<String, dynamic>> categories = [
  {'name': 'Science', 'isSelected': false},
  {'name': 'History', 'isSelected': false},
  {'name': 'Technology', 'isSelected': false},
  {'name': 'Art', 'isSelected': false},
  {'name': 'Geography', 'isSelected': false},
  {'name': 'Math', 'isSelected': false},
  {'name': 'Music', 'isSelected': false},
  {'name': 'Sports', 'isSelected': false},
  {'name': 'Culture', 'isSelected': false},
  {'name': 'Literature', 'isSelected': false},
  {'name': 'Astronomy', 'isSelected': false},
  {'name': 'Biology', 'isSelected': false},
  {'name': 'Physics', 'isSelected': false},
  {'name': 'Chemistry', 'isSelected': false},
  {'name': 'Movies', 'isSelected': false},
  {'name': 'Travel', 'isSelected': false},
  {'name': 'Food', 'isSelected': false},
  {'name': 'Animals', 'isSelected': false},
  {'name': 'Nature', 'isSelected': false},
  {'name': 'Health', 'isSelected': false},
  {'name': 'Psychology', 'isSelected': false},
  {'name': 'Philosophy', 'isSelected': false},
  {'name': 'Politics', 'isSelected': false},
  {'name': 'Economics', 'isSelected': false},
  {'name': 'Languages', 'isSelected': false},
  {'name': 'Fashion', 'isSelected': false},
  {'name': 'Gaming', 'isSelected': false},
  {'name': 'Inventions', 'isSelected': false},
  {'name': 'Festivals', 'isSelected': false},
  {'name': 'Vehicles', 'isSelected': false},
];

  void toggleCategory(int index) {
    setState(() {
      categories[index]['isSelected'] = !categories[index]['isSelected'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select a Category:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Wrap(
                spacing: 10.0, // Horizontal spacing
                runSpacing: 10.0, // Vertical spacing
                children: List.generate(categories.length, (index) {
                  return ElevatedButton(
                    onPressed: () => toggleCategory(index),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: categories[index]['isSelected']
                          ? Colors.blue
                          : Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      categories[index]['name'],
                      style: TextStyle(fontSize: 14),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
