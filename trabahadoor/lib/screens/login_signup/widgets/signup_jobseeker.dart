import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/login_signup/login_signup.dart';

class SignUpFormJobseeker extends StatefulWidget {
  const SignUpFormJobseeker({super.key});

  @override
  _SignUpFormJobseekerState createState() => _SignUpFormJobseekerState();
}

class _SignUpFormJobseekerState extends State<SignUpFormJobseeker> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController jobPositionController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
  final List<TextEditingController> skillControllers = [
    TextEditingController()
  ];
  final List<double> skillLevels = [0.0];

  void addSkill() {
    setState(() {
      skillControllers.add(TextEditingController());
      skillLevels.add(0.0);
    });
  }

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
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: skillControllers.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        inputFile(
                          label: 'Skills',
                          controller: skillControllers[index],
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your skills';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16.0),
                      ],
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: addSkill,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Add Another Skill'),
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
