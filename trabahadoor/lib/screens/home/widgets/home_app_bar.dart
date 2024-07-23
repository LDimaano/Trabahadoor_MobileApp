import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Color blueColor = const Color.fromRGBO(3, 63, 118, 1); // Define the blue color used in your theme

    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10), // Add small padding before the TrabahaDoor text
          Text(
            'TrabahaDoor',
            style: TextStyle(
              color: blueColor, // Apply the blue color
              fontWeight: FontWeight.bold,
              fontSize: 26, // Adjust font size as needed
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text('Welcome Back,',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 10),
                  Text(
                    'Kim Jisoo!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 30, right: 10),
                      transform: Matrix4.rotationZ(100),
                      child: Stack(
                        children: [
                          const Icon(Icons.notifications_none_outlined,
                              size: 30, color: Colors.grey),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                              ))
                        ],
                      )),
                  const SizedBox(width: 20),
                  ClipOval(
                      child: Image.asset(
                    'asset/images/profile.jpg',
                    width: 40,
                  ))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
