import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
                clipper: LowerNipMessageClipper(MessageType.send),
                child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, bottom: 25, right: 20),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(3, 63, 118, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: const Text("Please submit your resume",
                        style: TextStyle(fontSize: 16, color: Colors.white)))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.receive),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(color: const Color(0xFFE1E1E2), boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(3, 3),
                    ),
                  ]),
                  child: const Text("I would like to submit my resume",
                      style: TextStyle(fontSize: 16)))),
        ),
      ],
    );
  }
}
