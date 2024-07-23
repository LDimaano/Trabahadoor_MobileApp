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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tech Solutions Inc.',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.email, color: Colors.grey),
                              SizedBox(width: 8),
                              Text(
                                'info@techsolutions.com',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.grey),
                              SizedBox(width: 8),
                              Text(
                                '123 Tech Street, Silicon Valley, CA',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
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

  Widget _buildJobListing(
      BuildContext context, String title, String description) {
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
        message:
            'I am very interested in this position and have relevant experience.',
        location: 'Banay-Banay, San Jose',
        email: 'alicejohnson@yahoo.com'),
    Applicant(
        name: 'Bob Smith',
        status: 'Pending',
        image: 'asset/images/applicant2.jpg',
        message:
            'Looking forward to discussing my qualifications for this role.',
        location: 'Galamay-Amo, San Jose',
        email: 'bobsmith@gmail.com'),
    Applicant(
        name: 'Charlie Davis',
        status: 'Accepted',
        image: 'asset/images/applicant3.jpg',
        message: 'Excited to contribute to your team and grow in this role.',
        location: 'Abra, San Jose',
        email: 'charliedavis22@yahoo.com'),
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
                columnWidths: const {
                  0: FixedColumnWidth(120),
                  1: FlexColumnWidth(200),
                  2: FixedColumnWidth(150),
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
          child: GestureDetector(
            onTap: () => _showApplicantDetails(context, applicant),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(applicant.image),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => _showApplicantDetails(context, applicant),
              child: Text(
                applicant.name,
                overflow: TextOverflow.ellipsis,
              ),
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

  void _showApplicantDetails(BuildContext context, Applicant applicant) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(applicant.name),
          content: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(applicant.image),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Status: ${applicant.status}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.message, color: Colors.grey),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          applicant.message,
                          style: const TextStyle(fontSize: 14),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.email, color: Colors.grey),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          applicant.email,
                          style: const TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.grey),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          applicant.location,
                          style: const TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.attach_file, color: Colors.white),
                    label: const Text(
                      'See Attached Files',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(3, 63, 118, 1),
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(40),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Close',
                style: TextStyle(color: Color.fromRGBO(3, 63, 118, 1)),
              ),
            ),
          ],
        );
      },
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
  final String message;
  final String email;
  final String location;

  Applicant({
    required this.name,
    required this.status,
    required this.image,
    required this.message,
    required this.email,
    required this.location,
  });
}
