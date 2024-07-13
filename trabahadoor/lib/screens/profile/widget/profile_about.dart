import 'package:flutter/material.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.all(16.0), // Add padding for the whole scroll view
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About Section
            Row(
              children: const [
                Icon(Icons.person, size: 24),
                SizedBox(width: 8),
                Text(
                  'About',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Skills Section
            Row(
              children: const [
                Icon(Icons.star, size: 24),
                SizedBox(width: 8),
                Text(
                  'Skills',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              '• Nutrition Planning\n'
              '• Fitness Assessment\n'
              '• Strength Training\n'
              '• Weight Management\n'
              '• Group Fitness Instruction\n'
              '• Client Relationship Management',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Work Experience Section
            Row(
              children: const [
                Icon(Icons.work, size: 24),
                SizedBox(width: 8),
                Text(
                  'Work Experience',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              '• Personal Trainer at FitLife Gym (2019 - Present)\n'
              '  - Developed customized workout plans and nutrition guidelines for clients.\n'
              '  - Conducted fitness assessments and progress tracking.\n\n'
              '• Nutritionist at Healthy Living (2017 - 2019)\n'
              '  - Created tailored meal plans to help clients achieve health goals.\n'
              '  - Conducted workshops on nutrition and healthy eating habits.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Educational Background Section
            Row(
              children: const [
                Icon(Icons.school, size: 24),
                SizedBox(width: 8),
                Text(
                  'Educational Background',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              '• Bachelor of Science in Nutrition\n'
              '  - University of Health Sciences (2013 - 2017)\n\n'
              '• Certified Personal Trainer (CPT)\n'
              '  - National Academy of Sports Medicine (2018)',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
