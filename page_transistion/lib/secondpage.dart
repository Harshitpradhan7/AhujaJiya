// import 'package:flutter/material.dart';
//
// class secondpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold
//       (
//       appBar: AppBar(
//           title:Text("Dashboard".toUpperCase())
//       ),
//     //   body: Center(
//     //       child:RaisedButton(
//     //           child:Text("Go Back"),
//     //           onPressed: (){
//     //             Navigator.pop(context);
//     //           }
//     //       )
//     //   ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:page_transistion/thirdpage.dart';

// void main() => runApp(const MyApp());

class secondpage extends StatelessWidget {
  const secondpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(title:Text("Career Buddies"),
            backgroundColor: const Color.fromARGB(255, 44, 59, 139)),
        body: const MyStatefulWidget(),
        backgroundColor: const Color.fromARGB(255, 242, 222, 224),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 130, 10, 10),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      color: Color.fromARGB(255, 44, 59, 139),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => thirdpage()));
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Color.fromARGB(255, 44, 59, 139)),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => thirdpage()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 44, 59, 139)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: Text('Login'),
                )),
            Row(
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 44, 59, 139)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => thirdpage()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

