import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  // A list to store the user's favorite facts
  List<String> favoriteFacts = [
    "Honey never spoils.", 
    "Bananas are berries, but strawberries aren't.", 
    "Octopuses have three hearts.", 
    "Sharks existed before trees.", 
    "The Eiffel Tower can grow taller in summer.", 
  ];

  // Method to remove a fact from the list of favorites by its index
  void removeFromFavorites(int index) {
    setState(() {
      favoriteFacts.removeAt(index); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: favoriteFacts.isEmpty 
            ? Center(
                // Show this if the list is empty
                child: Text(
                  "No favorites added yet!",
                  style: TextStyle(fontSize: 18), // Style the text
                ),
              )
            : ListView.builder(
                itemCount: favoriteFacts.length, 
                itemBuilder: (context, index) {
                  return Container(
                    // Container to style each list item
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    padding: EdgeInsets.all(16.0), 
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(10.0), 
                      boxShadow: [
                        
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2), 
                          blurRadius: 5, 
                          offset: Offset(0, 3), 
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            favoriteFacts[index], 
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        IconButton(
                          // Button to remove the current fact
                          onPressed: () => removeFromFavorites(index), 
                          icon: Icon(
                            Icons.delete, // Delete icon
                            color: Colors.red, // Icon color
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
