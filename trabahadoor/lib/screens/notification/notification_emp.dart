import 'package:flutter/material.dart';

class EmployerNotificationPage extends StatelessWidget {
  const EmployerNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Notifications',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildNotificationItem(
            context,
            'Jhoanna Robles',
            'You have a new job application from Jennie Kim.',
            '1h',
            'asset/images/chatemp1.jpg',
          ),
          _buildNotificationItem(
            context,
            'Mikhaela Lim',
            'Reminder: Meeting scheduled with team at 3 PM.',
            '3h',
            'asset/images/chatemp2.jpg',
          ),
          _buildNotificationItem(
            context,
            'Mary Loi Ricalde',
            'New policy updates available for review.',
            '5h',
            'asset/images/chatemp3.jpg',
          ),
          _buildNotificationItem(
            context,
            'Nicollete Vergara',
            'You have a new job application from Taehyung Kim.',
            '6h',
            'asset/images/chatemp7.jpg',
          ),
          _buildNotificationItem(
            context,
            'Maraiah Arceta',
            'Reminder: Meeting scheduled with team at 10 PM.',
            '7h',
            'asset/images/chatemp8.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, String name,
      String content, String time, String imagePath) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$name ',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextSpan(
              text: content,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      subtitle: Text(
        time,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
