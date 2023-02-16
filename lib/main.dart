import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: sign_up(),
    );
  }
}
class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // margin: EdgeInsets.symmetric(vertical: 100 , horizontal: 30),
              margin: EdgeInsets.fromLTRB(0, 100, 20, 20 ),
              child: Text('Welcome', style: TextStyle(color: Colors.blue , fontSize: 45 , fontWeight: FontWeight.w400),),
            ),
            Container(
              child: Text('Please sign up our app', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w400),) ,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'User name',
                  labelStyle: TextStyle(fontWeight: FontWeight.w300),
                  hintText: 'username'
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


