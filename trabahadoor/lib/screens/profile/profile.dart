import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(254, 247, 255, 1.0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildProfilePicture(),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Jisoo',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Jisoo@gmail.com',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ApplicationStatusPage(),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.visibility,
                                  size: 20, color: Colors.white),
                              label: const Text(
                                'View Application Status',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                shape: const StadiumBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  _buildSectionTitle('Work Experience'),
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
                  const SizedBox(height: 20),
                  _buildSectionTitle('Skills'),
                  _buildSkillList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePicture() {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.blueGrey.withOpacity(0.5),
          width: 5,
        ),
      ),
      child: const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('asset/images/profile.jpg'),
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

class ApplicationStatusPage extends StatelessWidget {
  const ApplicationStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ApplicationStatus> statuses = [
      ApplicationStatus(
        jobTitle: 'Systems Analyst',
        companyLogo: 'asset/images/Swift.jpeg',
        status: 'Interview Scheduled',
      ),
      ApplicationStatus(
        jobTitle: 'Full-Stack Developer',
        companyLogo: 'asset/images/Optitech.png',
        status: 'Pending',
      ),
      ApplicationStatus(
        jobTitle: 'Mobile App Developer',
        companyLogo: 'asset/images/Alorica.png',
        status: 'Accepted',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Application Status',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Table(
                border: TableBorder(
                  horizontalInside:
                      BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
                ),
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FixedColumnWidth(150),
                },
                children: [
                  const TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Job',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Status',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  for (var status in statuses) _buildTableRow(status),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(ApplicationStatus status) {
    Color getStatusColor(String status) {
      switch (status) {
        case 'Interview Scheduled':
          return Colors.orange;
        case 'Pending':
          return Colors.blue;
        case 'Accepted':
          return Colors.green;
        default:
          return Colors.grey;
      }
    }

    IconData getStatusIcon(String status) {
      switch (status) {
        case 'Interview Scheduled':
          return Icons.schedule;
        case 'Pending':
          return Icons.hourglass_empty;
        case 'Accepted':
          return Icons.check_circle;
        default:
          return Icons.help;
      }
    }

    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  status.companyLogo,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(child: Text(status.jobTitle)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(getStatusIcon(status.status),
                  color: getStatusColor(status.status)),
              const SizedBox(width: 5),
              Expanded(
                child: Text(status.status,
                    style: TextStyle(color: getStatusColor(status.status))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ApplicationStatus {
  final String jobTitle;
  final String companyLogo;
  final String status;

  ApplicationStatus({
    required this.jobTitle,
    required this.companyLogo,
    required this.status,
  });
}
