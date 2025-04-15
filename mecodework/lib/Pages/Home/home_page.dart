import 'package:flutter/material.dart';
import 'package:mecodework/Widgets/drawer_nav.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INICIO'),
      ),
      drawer: MyAppDrawer(),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}