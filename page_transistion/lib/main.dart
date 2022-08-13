import 'package:flutter/material.dart';

import 'secondpage.dart';

void main() {
  runApp(new MaterialApp(
    title: "Career Buddies",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title:Text("Career Buddies")
        //   ),
        backgroundColor: const Color.fromARGB(255, 242, 222, 224),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondpage()));
            },
            // child: Image.asset('assets/Images/5836.jpg'),
            child: Text('Get Started'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 44, 59, 139)),
              shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        )
      )
    )
    );
  }
}
