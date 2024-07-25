class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;
  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);
  static List<Job> generateJobs() {
    return [
      Job(
        'Swift Logistics',
        'asset/images/Swift.jpeg',
        false,
        'Operations Manager',
        'Lipa City',
        'Full Time',
        [
          'Bacelors Degree in Business Adminstration, Logistics',
          '5+ years of experience in logistics operations management',
          'Proven Leadership and team management skills',
          'Strong analytical and problem solving abilities',
          'Excellent communication and interpersonal skills'
        ],
      ),
      Job(
        'OptiTech',
        'asset/images/Optitech.png',
        true,
        'IT Support Specialist',
        'Lipa, City',
        'Full Time',
        [
          'Diploma Degree in Computer Science and Information Technology',
          '1+ years of experience in providing IT support or troubleshooting',
          'Knowledge of computer hardware, software, and network systems',
          'Strong problem-solving skills and ability independently',
          'Excellent communication and customer service skills'
        ],
      ),
      Job(
        'Aquatech',
        'asset/images/Aquatech.png',
        true,
        'Sales Executive',
        'Batangas City',
        'Full Time',
        [
          'Bachelors Degree in Business Administration, Marketing',
          '2+ years of experience in sales, preferably in water treatment',
          'Proven track record of achieving sales target',
          'Excellent communication and negotiation skills'
        ],
      ),
      Job(
        'Contis',
        'asset/images/Contis.png',
        true,
        'Utility Maintenance',
        'Batangas City',
        'Full Time',
        [
          'Atleast 18 years old',
          'Atleast Highschool or Senior High School Graduate',
          'With or Without Experience',
          'Willing to work on extended hours and or shifting assignments'
        ],
      ),
      Job(
        'Alorica',
        'asset/images/Alorica.png',
        false,
        'Starter Basic Accounts',
        'Lipa, Batangas',
        'Full Time',
        [
          'Atleast 18 years old',
          'Atleast Highschool or Senior High School Graduate',
          'Excellent communication skills'
        ],
      ),
    ];
  }
}
