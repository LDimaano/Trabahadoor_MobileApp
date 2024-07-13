import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.receive),
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(color: Color(0xFFE1E1E2), boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(3, 3),
                    ),
                  ]),
                  child: Text("Hi Developer, how are you?",
                      style: TextStyle(fontSize: 16)))),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
                clipper: LowerNipMessageClipper(MessageType.send),
                child: Container(
                    padding: EdgeInsets.only(
                        left: 20, top: 10, bottom: 25, right: 20),
                    decoration: BoxDecoration(color: Colors.black, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),
                    child: Text("Hi Developer, how are you?",
                        style: TextStyle(fontSize: 16, color: Colors.white)))),
          ),
        ),
      ],
    );
  }
}
