import 'package:flutter/material.dart';
import 'package:mecodework/Widgets/default_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              '¡Bienvenido a MeCodeWork!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Aquí puedes encontrar todo lo que necesitas para tu trabajo.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      title: 'INICIO',
    );
  }
}