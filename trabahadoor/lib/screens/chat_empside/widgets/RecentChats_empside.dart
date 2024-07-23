import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/chat_empside/ChatPage_empside.dart';

enum UserStatus { online, offline, doNotDisturb }

class RecentChats_emp extends StatelessWidget {
  const RecentChats_emp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chats = [
      {
        "name": "Jhoanna Robles",
        "message": "I would like to submit...",
        "time": "6:20",
        "count": "1",
        "image": "asset/images/chatemp1.jpg",
        "status": UserStatus.online,
      },
      {
        "name": "Mikhaela Lim",
        "message": "I would like to submit...",
        "time": "11:15",
        "count": "3",
        "image": "asset/images/chatemp2.jpg",
        "status": UserStatus.offline,
      },
      {
        "name": "Mary Loi Ricalde",
        "message": "Noted. Thank you!",
        "time": "10:00",
        "count": "2",
        "image": "asset/images/chatemp3.jpg",
        "status": UserStatus.doNotDisturb,
      },
      {
        "name": "Stacey Sevilleja",
        "message": "Thank you!",
        "time": "8:34",
        "count": "5",
        "image": "asset/images/chatemp4.jpg",
        "status": UserStatus.online,
      },
      {
        "name": "Sheena Catacutan",
        "message": "Noted. Thankyou!",
        "time": "11:59",
        "count": "2",
        "image": "asset/images/chatemp5.jpg",
        "status": UserStatus.offline,
      },
      {
        "name": "Gweneth Apuli",
        "message": "Noted. Thankyou!",
        "time": "11:59",
        "count": "2",
        "image": "asset/images/chatemp6.jpg",
        "status": UserStatus.offline,
      },
      {
        "name": "Nicolette Vergara",
        "message": "Noted. Thankyou!",
        "time": "4:36",
        "count": "1",
        "image": "asset/images/chatemp7.jpg",
        "status": UserStatus.online,
      },
      {
        "name": "Maraiah Arceta",
        "message": "Noted. Thankyou!",
        "time": "8:00",
        "count": "2",
        "image": "asset/images/chatemp8.jpg",
        "status": UserStatus.online,
      },
    ];

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: chats.map((chat) {
          return chatItem(
            context,
            chat["name"],
            chat["message"],
            chat["time"],
            chat["count"],
            chat["image"],
            chat["status"],
          );
        }).toList(),
      ),
    );
  }

  Widget chatItem(
    BuildContext context,
    String title,
    String subtitle,
    String time,
    String messageCount,
    String imagePath,
    UserStatus status,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatPage()),
          );
        },
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      imagePath,
                      height: 50,
                      width: 50,
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      height: 20,
                      width: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        messageCount,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
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
