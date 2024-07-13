import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/chat/widgets/ActiveChats.dart';
import 'package:trabahadoor/screens/chat/widgets/RecentChats.dart';

class Homechat extends StatelessWidget {
  const Homechat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 211, 211)
          .withOpacity(0.1), // Match background color
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20), // Increase horizontal padding for extra space
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 15), // Thinner vertical padding for text
              child: Text(
                "Messages",
                style: TextStyle(
                  color: Colors.black, // Match font color
                  fontSize: 24, // Match font size
                  fontWeight: FontWeight.w600, // Match font weight
                ),
              ),
            ),
            const SizedBox(height: 10), // Thinner padding before the rectangle
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10), // Thinner padding inside container
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                // Removed boxShadow to eliminate shadows
              ),
              child: Row(
                children: [
                  Expanded(
                    // Use Expanded to make the text field take available space
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10), // Thinner padding for the text field
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15), // Add space after the search bar
            ActiveChats(),
            RecentChats(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(3, 63, 118, 1),
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
