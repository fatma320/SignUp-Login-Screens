import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'OpenSans'),
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
  var f = Colors.grey[200];
  var b = Colors.black;
  var w = Colors.white;
  var g = Colors.grey;
  var bl = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 45,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Text(
                  'Please sign up our app',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  'User Name',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: f,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(bottom: 30),
                child: TextField(
                    decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  hintText: 'username',
                  hintStyle: TextStyle(color: g),
                  border: InputBorder.none,
                )),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: f,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(bottom: 30),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'omit445@gmail.com',
                    hintStyle: TextStyle(color: g),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Password (6-14)',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: f,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(bottom: 30),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    suffixIcon: Icon(Icons.visibility_off , color: g,),
                    hintText: 'password',
                    hintStyle: TextStyle(color: g),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Container(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    child:Text('Sign Up') ,
                    onPressed: (){},
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text('Already have an account?' , style: TextStyle(color: g),),
                    TextButton(onPressed: (){}, child: Text('Log in' , style: TextStyle(color: bl ),))
                  ],
                ),
              ),
              Center(
                child: Container(
                  child: Text('-or-', style: TextStyle(fontSize: 18),),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 90),
                  child: Row(
                    children: [
                      IconButton(onPressed:(){}, icon: Icon(
                          FontAwesomeIcons.squareTwitter , color: Colors.lightBlueAccent, size: 30,
                      ),),
                      IconButton(onPressed:(){}, icon: Icon(
                          FontAwesomeIcons.squareInstagram , color: Colors.purple,size: 30,
                      ),),
                      IconButton(onPressed:(){}, icon: Icon(
                          FontAwesomeIcons.squareFacebook , color: bl,size: 30,
                      ),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
