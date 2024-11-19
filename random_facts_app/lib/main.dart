import 'package:flutter/material.dart';
import 'package:random_facts_app/veiws/home_screen.dart';
import 'package:random_facts_app/veiws/categories.dart'; 
import 'package:random_facts_app/veiws/favorites.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/categories': (context) => CategoriesScreen(), 
        '/favorites': (context) => FavoritesScreen(),   
      },
    );
  }
}
