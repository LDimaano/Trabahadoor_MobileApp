import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Notifications',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
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
            'Jihyo Park',
            'Sent you a message.',
            '7h',
            'asset/images/chat1.jpg',
          ),
          _buildNotificationItem(
            context,
            'Jennie Kim',
            'Posted a job for you.',
            '7h',
            'asset/images/chat2.jpg',
          ),
          _buildNotificationItem(
            context,
            'Taehyung Kim',
            'Sent you a message.',
            '9h',
            'asset/images/chat3.jpg',
          ),
          _buildNotificationItem(
            context,
            'Seokjin Kim',
            'Invites you for an interview.',
            '9h',
            'asset/images/chat4.jpg',
          ),
          _buildNotificationItem(
            context,
            'Yunjin Huh',
            'Sent you a message.',
            '10h',
            'asset/images/chat5.jpg',
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
