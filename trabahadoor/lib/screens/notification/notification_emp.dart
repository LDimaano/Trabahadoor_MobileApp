import 'package:flutter/material.dart';

class EmployerNotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Employer Notifications', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildNotificationItem(
            context,
            'Jhoanna Robles',
            'You have a new job application from Jennie Kim.',
            '1h',
          ),
          _buildNotificationItem(
            context,
            'Mikhaela Lim',
            'Reminder: Meeting scheduled with team at 3 PM.',
            '3h',
          ),
          _buildNotificationItem(
            context,
            'Mary Loi Ricalde',
            'New policy updates available for review.',
            '5h',
          ),
          _buildNotificationItem(
            context,
            'Nicolette Vergara',
            'You have a new job application from Taehyung Kim.',
            '5h',
          ),
          _buildNotificationItem(
            context,
            'Maraiah Arceta',
            'Reminder: Meeting scheduled with team at 10 PM.',
            '5h',
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, String name, String content, String time) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.business),
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
        style: TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
