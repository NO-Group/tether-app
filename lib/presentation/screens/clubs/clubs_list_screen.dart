import 'package:flutter/material.dart';

class ClubsListScreen extends StatelessWidget {
  const ClubsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        title: const Text('Clubs', style: TextStyle(fontFamily: 'NovaRound')),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.menu_book, size: 64, color: Color(0xFF00D4FF)),
            const SizedBox(height: 16),
            const Text(
              'No clubs yet',
              style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'NovaRound'),
            ),
            const SizedBox(height: 8),
            const Text(
              'Join a club to start reading',
              style: TextStyle(color: Color(0xFF888888), fontFamily: 'NovaRound'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF00D4FF),
        child: const Icon(Icons.add),
      ),
    );
  }
}
