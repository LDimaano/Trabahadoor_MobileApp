import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              '4.8',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Ranking'),
          ],
        ),
        Column(
          children: [
            Text(
              '35',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Following'),
          ],
        ),
        Column(
          children: [
            Text(
              '50',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Followers'),
          ],
        ),
      ],
    );
  }
}
