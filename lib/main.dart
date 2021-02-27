import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/classes/provider_class.dart';
import 'screens/tasks_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

