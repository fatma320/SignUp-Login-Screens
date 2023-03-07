import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:welcome_app/Screens/logIn.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  var f = Colors.grey[200];
  var b = Colors.black;
  var w = Colors.white;
  var g = Colors.grey;
  var bl = Colors.blue;

  void selectScreen(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return LogIn();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 10),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        color: bl, fontSize: 45, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: const Text(
                    'Please sign up our app',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: const Text(
                    'User Name',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: f,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextField(
                      decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    hintText: 'username',
                    hintStyle: TextStyle(color: g),
                    border: InputBorder.none,
                  )),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: const Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: f,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      hintText: 'email',
                      hintStyle: TextStyle(color: g),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: const Text(
                    'Password (6-14)',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: f,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: g,
                      ),
                      hintText: '************',
                      hintStyle: TextStyle(color: g),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    child: const Text('Sign Up'),
                    onPressed: () {},
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: g, fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () => selectScreen(context),
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              color: bl,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ))
                  ],
                ),
                const Center(
                  child: Text(
                    '-or-',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.lightBlueAccent,
                          child: const Icon(
                            FontAwesomeIcons.twitter,
                            size: 35,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.purple,
                          child: const Icon(
                            FontAwesomeIcons.instagram,
                            size: 35,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.blue,
                          child: const Icon(
                            FontAwesomeIcons.facebook,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
