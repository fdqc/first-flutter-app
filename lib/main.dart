import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:startup_namer/models/saved_names.dart';

import 'router.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      // Provides an instance of a ChangeNotifier to its descendants
      builder: (context) => SavedNamesModel(),
      child: Router(),
    ),
  );
}