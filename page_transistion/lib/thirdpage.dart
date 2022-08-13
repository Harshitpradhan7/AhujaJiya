import 'package:flutter/material.dart';
import 'package:page_transistion/secondpage.dart';

class thirdpage extends StatelessWidget {
  const thirdpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(title:Text("Dashboard Career Buddies"),
          backgroundColor: const Color.fromARGB(255, 44, 59, 139)),
      backgroundColor: const Color.fromARGB(255, 242, 222, 224),
    );
  }
}

