import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white, // Beige primary color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asset/images/profile.jpg'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Jisoo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Jisoo@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Upgrade To PRO'),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.blue, // Button color
                  shape: const StadiumBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '4.8',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Ranking'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '35',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Following'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '50',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Followers'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.code),
                title: Text('Technical Proficiency'),
              ),
              const ListTile(
                leading: Icon(Icons.chat),
                title: Text('Communication Skills'),
              ),
              const ListTile(
                leading: Icon(Icons.loop),
                title: Text('Adaptability and Continuous Learning'),
              ),
              const ListTile(
                leading: Icon(Icons.business_center),
                title: Text('Project Management'),
              ),
              const ListTile(
                leading: Icon(Icons.lightbulb),
                title: Text('Problem-Solving Abilities'),
              ),
              const Divider(),
              ListTile(
                title: Text('Experience'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildExperienceItem(Icons.work, 'Systems Analyst'),
                    SizedBox(height: 2),
                    _buildExperienceItem(Icons.work, 'Full-Stack Developer'),
                    SizedBox(height: 2),
                    _buildExperienceItem(Icons.work, 'Mobile App Developer'),
                    SizedBox(height: 2),
                    _buildExperienceItem(Icons.work, 'Web Developer'),
                    SizedBox(height: 2),
                    _buildExperienceItem(Icons.work, 'Software Developer'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceItem(IconData iconData, String text) {
    return Row(
      children: [
        Icon(iconData),
        SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
