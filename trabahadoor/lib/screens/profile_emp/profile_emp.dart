import 'package:flutter/material.dart';

class ProfilePage_emp extends StatelessWidget {
  const ProfilePage_emp({super.key});

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
                            'Tech Solutions Inc.',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.email, color: Colors.grey),
                              const SizedBox(width: 8),
                              const Text(
                                'info@techsolutions.com',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.grey),
                              const SizedBox(width: 8),
                              const Text(
                                '123 Tech Street, Silicon Valley, CA',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          // Removed View applicants button
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  _buildSectionTitle('Company Overview'),
                  const Text(
                    'Tech Solutions Inc. is a leading provider of innovative technology solutions. We specialize in software development, IT consulting, and cloud services to help businesses achieve their goals through digital transformation.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                  _buildSectionTitle('Job Listings'),
                  _buildJobListing(
                    context,
                    'Software Engineer',
                    'We are looking for a skilled software engineer to join our team.',
                  ),
                  _buildJobListing(
                    context,
                    'Project Manager',
                    'Seeking an experienced project manager to lead various projects.',
                  ),
                  _buildJobListing(
                    context,
                    'UI/UX Designer',
                    'Looking for a creative UI/UX designer to design web and mobile applications.',
                  ),
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
        backgroundImage: AssetImage('asset/images/Alorica.png'),
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

  Widget _buildJobListing(BuildContext context, String title, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobApplicantsPage(jobTitle: title),
          ),
        );
      },
      child: Card(
        color: const Color.fromRGBO(254, 247, 255, 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 5),
                    Text(description),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}

class JobApplicantsPage extends StatefulWidget {
  final String jobTitle;

  const JobApplicantsPage({super.key, required this.jobTitle});

  @override
  _JobApplicantsPageState createState() => _JobApplicantsPageState();
}

class _JobApplicantsPageState extends State<JobApplicantsPage> {
  List<Applicant> applicants = [
    Applicant(
      name: 'Alice Johnson',
      status: 'Scheduled',
      image: 'asset/images/applicant1.jpg',
    ),
    Applicant(
      name: 'Bob Smith',
      status: 'Pending',
      image: 'asset/images/applicant2.jpg',
    ),
    Applicant(
      name: 'Charlie Davis',
      status: 'Accepted',
      image: 'asset/images/applicant3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.jobTitle} Applicants',
            style: const TextStyle(color: Colors.white)),
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
                columnWidths: {
                  0: FixedColumnWidth(120), // Image column width
                  1: FlexColumnWidth(200), // Name column width
                  2: FixedColumnWidth(150), // Status column width
                },
                children: [
                  const TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Applicant',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          '',
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
                  for (var applicant in applicants) _buildTableRow(applicant),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(Applicant applicant) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(applicant.image),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              applicant.name,
              overflow: TextOverflow.ellipsis, // Prevent overflow
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<String>(
            value: applicant.status,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.grey.withOpacity(0.5),
            ),
            onChanged: (String? newValue) {
              setState(() {
                applicant.status = newValue!;
              });
            },
            items: <String>['Scheduled', 'Pending', 'Accepted']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    Icon(
                      _getStatusIcon(value),
                      color: _getStatusColor(value),
                    ),
                    const SizedBox(width: 8),
                    Text(value),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  IconData _getStatusIcon(String status) {
    switch (status) {
      case 'Scheduled':
        return Icons.schedule;
      case 'Pending':
        return Icons.hourglass_empty;
      case 'Accepted':
        return Icons.check_circle;
      default:
        return Icons.help;
    }
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Scheduled':
        return Colors.orange;
      case 'Pending':
        return Colors.blue;
      case 'Accepted':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}

class Applicant {
  final String name;
  String status;
  final String image;

  Applicant({
    required this.name,
    required this.status,
    required this.image,
  });
}
