import 'package:flutter/material.dart';

class EmployerAppBar extends StatelessWidget {
  const EmployerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
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
                'Hoshi!',
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
                'asset/images/profile_emp.jpg',
                width: 40,
              ))
            ],
          ),
        ],
      ),
    );
  }
}
