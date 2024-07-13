import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Jisoo',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Jisoo@gmail.com',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class ProfileUpgradeButton extends StatelessWidget {
  const ProfileUpgradeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        iconColor: const Color.fromRGBO(3, 63, 118, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Text('Upgrade To PRO'),
    );
  }
}
