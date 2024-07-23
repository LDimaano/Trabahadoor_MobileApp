import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/employer_side/widgets/employer_app_bar.dart';
import 'package:trabahadoor/screens/employer_side/widgets/jobseeker_list.dart';
import 'package:trabahadoor/screens/employer_side/widgets/search_card.dart';
import 'package:trabahadoor/screens/employer_side/widgets/tag_list.dart';
import 'package:trabahadoor/screens/profile_emp/profile_emp.dart';
import 'package:trabahadoor/screens/search_empside/search_emp.dart';
import 'package:trabahadoor/screens/chat_empside/HomeChat_empside.dart';

class MainScreenemp extends StatefulWidget {
  const MainScreenemp({super.key});

  @override
  _MainScreenempState createState() => _MainScreenempState();
}

class _MainScreenempState extends State<MainScreenemp> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const EmployerSide(),
    const SearchPage(),
    const Center(child: Text('')),
    const Homechat_emp(),
    const ProfilePage_emp(),
  ];

  void _onItemTapped(int index) {
    if (index != 2) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(3, 63, 118, 1),
        elevation: 0,
        onPressed: () => _showAddJobModal(context),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Case',
              icon: Icon(
                Icons.cases_outlined,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Text(''),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(
                Icons.chat_outlined,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Person',
              icon: Icon(
                Icons.person_outline,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmployerSide extends StatelessWidget {
  const EmployerSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color:
                    const Color.fromARGB(255, 217, 211, 211).withOpacity(0.1),
              ),
            ),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EmployerAppBar(),
              const SearchCard(),
              const TagList(),
              JobList(),
            ],
          )
        ],
      ),
    );
  }
}

void _showAddJobModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
    ),
    builder: (BuildContext context) {
      return const AddJobForm();
    },
  );
}

class AddJobForm extends StatefulWidget {
  const AddJobForm({super.key});

  @override
  _AddJobFormState createState() => _AddJobFormState();
}

class _AddJobFormState extends State<AddJobForm> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _location = '';
  String _position = '';
  String _requirements = '';
  String _jobType = 'Full Time';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Background color of the container
          borderRadius: const BorderRadius.vertical(top: Radius.circular(25.0)), // Rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.white, // Background color of the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0), // Rounded corners
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.work,
                          color: Color.fromRGBO(3, 63, 118, 1),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Add a Job Position',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(3, 63, 118, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Job Title',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the job title';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _title = value!;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Location',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the job location';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _location = value!;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Position',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the job position';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _position = value!;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Requirements',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the job requirements';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _requirements = value!;
                      },
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const Text(
                      'Job Type',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: const Text('Full Time'),
                            leading: Radio<String>(
                              value: 'Full Time',
                              groupValue: _jobType,
                              onChanged: (value) {
                                setState(() {
                                  _jobType = value!;
                                });
                              },
                              activeColor: const Color.fromRGBO(3, 63, 118, 1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: const Text('Part Time'),
                            leading: Radio<String>(
                              value: 'Part Time',
                              groupValue: _jobType,
                              onChanged: (value) {
                                setState(() {
                                  _jobType = value!;
                                });
                              },
                              activeColor: const Color.fromRGBO(3, 63, 118, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          final newJob = (
                            title: _title,
                            location: _location,
                            position: _position,
                            requirements: _requirements,
                            jobType: _jobType,
                          );
                          Navigator.pop(context, newJob);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(3, 63, 118, 1),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('Add Job',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
