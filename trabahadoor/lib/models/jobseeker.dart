class Jobseeker {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> exp;
  List<String> skills;
  Jobseeker(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.skills, this.exp);
  static List<Jobseeker> generateJobs() {
    return [
      Jobseeker(
          'Juanito Santos',
          'asset/images/emp1.jpg',
          false,
          'Customer Service Representative',
          'Taysan, San Jose, Batangas',
          'Full Time', [
        'Communication Skills',
        'Active Listening',
        'Problem Solving Skills',
      ], [
        'Technical Support Specialist (2019-2020)',
        'Customer Service Associate (2021-2022)',
      ]),
      Jobseeker('Isabel Garcia', 'asset/images/emp2.jpg', true,
          'Marketing Manager', 'Aguila, San Jose, Batangas', 'Full Time', [
        'Communication Skills',
        'Strategic Thinking Skills',
        'Analytical Skills',
      ], [
        'Marketing Coordinator (2018-2020)'
      ]),
      Jobseeker('Andres Bautista', 'asset/images/emp3.jpg', true,
          'Financial Analyst', 'Taysan, San Jose, Batangas', 'Full Time', [
        'Communication Skills',
        'Analytical Skills',
        'Problem-Solving Skills',
      ], [
        'Junior Financial Analyst (2019-2020)'
      ]),
      Jobseeker('Josefa Aquino', 'asset/images/emp4.jpg', true,
          'Sales Executive', 'Lumil, San Jose, Batangas', 'Full Time', [
        'Communication Skills',
        'Customer Relationship Management',
        'Problem-Solving',
      ], [
        'Account Manager (2020-2021)',
        'Customer Service Representative (2022)'
      ]),
      Jobseeker(
          'Fernando Delos Santos',
          'asset/images/emp5.jpg',
          false,
          'Software Developer',
          'Tugtug, San Jose, Batangas',
          'Full Time',
          ['Technical Skills', 'Communication Skills', 'Teamwork'],
          ['Full-Stack Developer (2021-2023)']),
      Jobseeker(
          'Maria Rosario Cruz',
          'asset/images/emp6.jpg',
          false,
          'Digital Marketing Specialist',
          'Dagatan, San Jose, Batangas',
          'Full Time', [
        'Communication Skills',
        'Graphic Design',
        'Content Marketing'
      ], [
        'Social Media Manager (2019-2021)',
        'Content Marketing Specialist (2023-2024)'
      ]),
      Jobseeker(
          'Luzviminda Reyes',
          'asset/images/emp7.jpg',
          false,
          'Human Resource Specialist',
          'Palanca, San Jose, Batangas',
          'Full Time', [
        'Communication Skills',
        'Problem-Solving Skills',
        'Decision-Making Skills'
      ], [
        'HR Assistant (2018-2020)',
        'Recruitment Coordinator (2022)'
      ]),
    ];
  }
}
