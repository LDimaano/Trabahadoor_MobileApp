import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/chat/ChatPage.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 15), // Reduced vertical padding
      width: MediaQuery.of(context).size.width *
          0.9, // Set a specific width for the container
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), // Reduced corner radius
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          for (int i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10), // Reduced vertical padding between items
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatPage()),
                  );
                },
                child: Container(
                  height: 50, // Reduced height of each chat item
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(30), // Reduced avatar size
                        child: Image.asset(
                          "asset/images/avatar.png",
                          height: 50, // Reduced image height
                          width: 50, // Reduced image width
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15), // Reduced horizontal padding
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Programmer",
                              style: TextStyle(
                                fontSize: 16, // Reduced font size
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5), // Reduced space
                            Text(
                              "Hello Programmer, how are you?",
                              style: TextStyle(
                                fontSize: 14, // Reduced font size
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
                            const Text(
                              "12:30",
                              style: TextStyle(
                                fontSize: 12, // Reduced font size
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(height: 5), // Reduced space
                            Container(
                              height:
                                  20, // Reduced height of the notification dot
                              width: 20, // Reduced width
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                    10), // Adjusted radius
                              ),
                              child: const Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12, // Reduced font size
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
            ),
        ],
      ),
    );
  }
}
