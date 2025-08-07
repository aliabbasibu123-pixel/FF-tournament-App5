import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> tournaments = [
    "Clash Squad Challenge",
    "Battle Royale Brawl",
    "Sniper Showdown",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tournaments')),
      body: ListView.builder(
        itemCount: tournaments.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tournaments[index]),
            trailing: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Joined ${tournaments[index]}")),
                );
              },
              child: Text("Join"),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Upload receipt (not yet implemented)")),
          );
        },
        child: Icon(Icons.upload),
      ),
    );
  }
}
