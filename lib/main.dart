import 'package:flutter/material.dart';
import 'package:flutter_favorite_topics_page_ui_design/favorite_topics.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: FavoriteTopics());
  }
}
