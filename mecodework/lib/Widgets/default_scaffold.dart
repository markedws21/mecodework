import 'package:flutter/material.dart';
import 'package:mecodework/Widgets/drawer_nav.dart';

class DefaultScaffold extends StatefulWidget{
  final Widget body;
  final String title;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;

  const DefaultScaffold({
    super.key,
    required this.body,
    this.title='',
    this.floatingActionButton,
    this.bottomNavigationBar,

  });

  @override
  State<DefaultScaffold> createState() => _DefaultScaffoldState();
}
class _DefaultScaffoldState extends State<DefaultScaffold> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Color.fromARGB(255, 0, 0, 0)),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }
          ),
      ),
      body: widget.body,
      floatingActionButton: widget.floatingActionButton,
      bottomNavigationBar: widget.bottomNavigationBar,
      drawer: MyAppDrawer()
    );
  }
}