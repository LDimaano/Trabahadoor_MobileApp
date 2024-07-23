import 'package:flutter/material.dart';

enum UserStatus { online, offline, doNotDisturb }

class ActiveChats_emp extends StatelessWidget {
  const ActiveChats_emp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> users = [
      {"imagePath": "asset/images/chatemp1.jpg", "status": UserStatus.online},
      {"imagePath": "asset/images/chatemp2.jpg", "status": UserStatus.offline},
      {
        "imagePath": "asset/images/chatemp3.jpg",
        "status": UserStatus.doNotDisturb
      },
      {"imagePath": "asset/images/chatemp4.jpg", "status": UserStatus.online},
      {"imagePath": "asset/images/chatemp5.jpg", "status": UserStatus.offline},
      {
        "imagePath": "asset/images/chatemp6.jpg",
        "status": UserStatus.doNotDisturb
      },
      {"imagePath": "asset/images/chatemp7.jpg", "status": UserStatus.online},
      {"imagePath": "asset/images/chatemp8.jpg", "status": UserStatus.online},
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: users.map((user) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: UserChatItem(
                imagePath: user['imagePath'],
                status: user['status'],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class UserChatItem extends StatelessWidget {
  final String imagePath;
  final UserStatus status;

  const UserChatItem({
    super.key,
    required this.imagePath,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(imagePath),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 4,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: _getStatusColor(status),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Icon(
              _getStatusIcon(status),
              size: 10,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Color _getStatusColor(UserStatus status) {
    switch (status) {
      case UserStatus.online:
        return Colors.green;
      case UserStatus.offline:
        return Colors.grey;
      case UserStatus.doNotDisturb:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  IconData _getStatusIcon(UserStatus status) {
    switch (status) {
      case UserStatus.online:
        return Icons.circle;
      case UserStatus.offline:
        return Icons.remove_circle;
      case UserStatus.doNotDisturb:
        return Icons.do_not_disturb;
      default:
        return Icons.circle;
    }
  }
}
