import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/notification/notification_emp.dart';

class EmployerAppBar extends StatelessWidget {
  const EmployerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const Color blueColor = Color.fromRGBO(3, 63, 118, 1);

    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            'TrabahaDoor',
            style: TextStyle(
              color: blueColor,
              fontWeight: FontWeight.bold,
              fontSize: 26,
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
                    'Alorica!',
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const EmployerNotificationPage()),
                        );
                      },
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ClipOval(
                      child: Image.asset(
                    'asset/images/Alorica.png',
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
