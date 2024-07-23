import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          },
        ),
        title: Text('Notifications', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildNotificationItem(
            context,
            'Jihyo Park',
            'Sent you a message.',
            '7h',
          ),
          _buildNotificationItem(
            context,
            'Jennie Kim',
            'Posted a job for you.',
            '7h',
          ),
          _buildNotificationItem(
            context,
            'Taehyung Kim',
            'Sent you a message.',
            '9h',
          ),
          _buildNotificationItem(
            context,
            'Seokjin Kim',
            'Invites you for an interview.',
            '9h',
          ),
          _buildNotificationItem(
            context,
            'Yunjin Huh',
            'Sent you a message.',
            '10h',
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, String name, String content, String time) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$name ',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextSpan(
              text: content,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      subtitle: Text(
        time,
        style:TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
        ),
        ),
    );
  }
}
