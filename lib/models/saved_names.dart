import 'package:english_words/english_words.dart';
import 'package:flutter/widgets.dart';

class SavedNamesModel extends ChangeNotifier {
  // Internal, private state of the saved set
  final Set<WordPair> _saved = Set<WordPair>();

  // Getter for _saved property
  Set<WordPair> get savedItems => _saved;

  /// Adds a pair to the Set
  void add(WordPair pair) {
    _saved.add(pair);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes a pair from the Set
  void remove(WordPair pair) {
    _saved.remove(pair);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Checks if a pair exists in the Set
  bool contains(WordPair pair) {
    return _saved.contains(pair);
  }
}