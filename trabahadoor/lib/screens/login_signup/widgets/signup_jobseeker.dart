import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/login_signup/login_signup.dart';

class SignUpForm_jobseeker extends StatefulWidget {
  const SignUpForm_jobseeker({super.key});

  @override
  _SignUpForm_jobseekerState createState() => _SignUpForm_jobseekerState();
}

class _SignUpForm_jobseekerState extends State<SignUpForm_jobseeker> {
  final _formKey = GlobalKey<FormState>();
  double skill1Level = 0;
  double skill2Level = 0;
  double skill3Level = 0;
  final TextEditingController skill1Controller = TextEditingController();
  final TextEditingController skill2Controller = TextEditingController();
  final TextEditingController skill3Controller = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController jobPositionController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                inputFile(
                  label: 'Full Name',
                  controller: fullNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                inputFile(
                  label: 'Address',
                  controller: addressController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                inputFile(
                  label: 'Job Position',
                  controller: jobPositionController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your job position';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                inputFile(
                  label: 'Skill 1',
                  controller: skill1Controller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your first skill';
                    }
                    return null;
                  },
                ),
                Slider(
                  value: skill1Level,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: skill1Level.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      skill1Level = value;
                    });
                  },
                ),
                inputFile(
                  label: 'Skill 2',
                  controller: skill2Controller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your second skill';
                    }
                    return null;
                  },
                ),
                Slider(
                  value: skill2Level,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: skill2Level.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      skill2Level = value;
                    });
                  },
                ),
                inputFile(
                  label: 'Skill 3',
                  controller: skill3Controller,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your third skill';
                    }
                    return null;
                  },
                ),
                Slider(
                  value: skill3Level,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: skill3Level.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      skill3Level = value;
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                inputFile(
                  label: 'Experience',
                  controller: experienceController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your experience';
                    }
                    return null;
                  },
                  maxLines: 3,
                ),
                const SizedBox(height: 16.0),
                Center(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginSignup()),
                        );
                      }
                    },
                    color: Theme.of(context).primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget inputFile({
    required String label,
    required TextEditingController controller,
    String? Function(String?)? validator,
    bool obscureText = false,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          maxLines: maxLines,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          ),
          validator: validator,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
