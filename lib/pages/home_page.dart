import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
final String username;
const HomePage(this.username);

@override
Widget build(BuildContext context) {
return Scaffold(
body: Center(
child: Text(
"Welcome, $username!",
style: const TextStyle(fontSize: 24),
),
),
);
}
}
