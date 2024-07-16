import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      backgroundColor: Colors.white.withOpacity(0.95),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Jisoo',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Center(
                child: Text(
                  'Jisoo@gmail.com',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit, size: 20, color: Colors.white),
                  label: const Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildSectionTitle('Skills'),
              _buildSkillList(),
              const SizedBox(height: 20),
              _buildSectionTitle('Experience'),
              _buildExperienceItem(
                'Systems Analyst',
                'Company ABC',
                'January 2018 - December 2020',
                'Led a team of analysts in developing and implementing systems for data management.',
              ),
              _buildExperienceItem(
                'Full-Stack Developer',
                'Tech Solutions Inc.',
                'May 2016 - December 2017',
                'Designed and developed scalable web applications using React.js and Node.js.',
              ),
              _buildExperienceItem(
                'Mobile App Developer',
                'MobileTech Ltd.',
                'August 2014 - April 2016',
                'Created native Android applications that achieved 1 million downloads on Google Play.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSkillList() {
    List<String> skills = [
      'Technical Proficiency',
      'Communication Skills',
      'Adaptability and Continuous Learning',
      'Project Management',
      'Problem-Solving Abilities',
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1),
          child: ListTile(
            dense: true,
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            leading: const Icon(Icons.circle, size: 10),
            contentPadding: EdgeInsets.zero,
            title: Text(
              skills[index],
              style: const TextStyle(fontSize: 14),
            ),
          ),
        );
      },
    );
  }

  Widget _buildExperienceItem(
      String title, String company, String duration, String details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(company),
            const SizedBox(height: 2),
            Text(duration),
            const SizedBox(height: 2),
            Text('- $details'),
          ],
        ),
      ),
    );
  }
}
