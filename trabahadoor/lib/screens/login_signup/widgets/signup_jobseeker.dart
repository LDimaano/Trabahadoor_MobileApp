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
  final List<TextEditingController> skillControllers = [
    TextEditingController()
  ];
  final List<TextEditingController> experienceControllers = [
    TextEditingController()
  ];

  void addSkill() {
    setState(() {
      skillControllers.add(TextEditingController());
    });
  }

  void addExperience() {
    setState(() {
      experienceControllers.add(TextEditingController());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      "asset/images/login-img.png",
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Create your jobseeker account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                Form(
                  key: _formKey,
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
                      TextButton.icon(
                        onPressed: addSkill,
                        icon: const Icon(Icons.add, color: Color.fromRGBO(3, 63, 118, 1)),
                        label: const Text(
                          'Add Another Skill',
                          style: TextStyle(color: Color.fromRGBO(3, 63, 118, 1)),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: experienceControllers.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              inputFile(
                                label: 'Experience',
                                controller: experienceControllers[index],
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your experience';
                                  }
                                  return null;
                                },
                                maxLines: 3,
                              ),
                              const SizedBox(height: 16.0),
                            ],
                          );
                        },
                      ),
                      TextButton.icon(
                        onPressed: addExperience,
                        icon: const Icon(Icons.add, color: Color.fromRGBO(3, 63, 118, 1)),
                        label: const Text(
                          'Add Another Experience',
                          style: TextStyle(color: Color.fromRGBO(3, 63, 118, 1)),
                        ),
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
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          ),
          validator: validator,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
