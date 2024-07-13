import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/login_signup/login_signup.dart';

class SignUpForm_employer extends StatefulWidget {
  const SignUpForm_employer({Key? key}) : super(key: key);

  @override
  _SignUpForm_employerState createState() => _SignUpForm_employerState();
}

class _SignUpForm_employerState extends State<SignUpForm_employer> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

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
                  label: 'Company Name',
                  controller: companyNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your company name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                inputFile(
                  label: 'Location',
                  controller: locationController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your location';
                    }
                    return null;
                  },
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
