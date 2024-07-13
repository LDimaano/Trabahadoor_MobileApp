import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('asset/images/profile.jpg'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Color.fromRGBO(3, 63, 118, 1),
            child: Icon(Icons.edit, color: Colors.white, size: 16),
          ),
        ),
      ],
    );
  }
}
