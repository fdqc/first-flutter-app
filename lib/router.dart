import 'package:flutter/material.dart';

import 'screens/random_words.dart';
import 'screens/saved_suggestions.dart';

class Router extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent[700],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RandomWords(),
        '/saved-suggestions': (context) => SavedSuggestions(),
      },
    );
  }  
}