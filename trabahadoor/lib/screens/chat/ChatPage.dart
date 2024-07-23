import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/chat/widgets/ChatBottomSheet.dart';
import 'package:trabahadoor/screens/chat/widgets/ChatSample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: AppBar(
            leadingWidth: 30,
            title: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "asset/images/chat1.jpg",
                    height: 45,
                    width: 45,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Jihyo Park",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.call,
                    color: Color.fromRGBO(3, 63, 118, 1), size: 26),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.video_call,
                    color: Color.fromRGBO(3, 63, 118, 1), size: 30),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child:
                    Icon(Icons.more_vert, color: Color.fromRGBO(3, 63, 118, 1)),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
        children: const [
          ChatSample(),
        ],
      ),
      bottomSheet: const ChatBottomSheet(),
    );
  }
}
