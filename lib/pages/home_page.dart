import 'package:flutter/material.dart';
import 'my_collection.dart';
import 'player_finder.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1C1E),
      appBar: AppBar(
        title: Text("Welcome, $username"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MyCollectionPage(username),
                  ),
                );
              },
              child: const Text("My Collection"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PlayerFinderPage()),
                );
              },
              child: const Text("Player Finder"),
            )
          ],
        ),
      ),
    );
  }
}
