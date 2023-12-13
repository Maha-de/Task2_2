import 'package:flutter/material.dart';
import 'package:task_2/second.dart';
import 'package:task_2/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final userName = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Login Page")),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 10, 20),
        child: Center(
          child: ListView(
            children: [Icon(Icons.ac_unit_outlined, size: 50),
              SizedBox(height: 20),
              Center(
                  child: Text("Login", style: TextStyle(fontSize: 20),)),
              TextField(
                controller: userName,
                decoration: InputDecoration(
                  labelText: "Username"
                ),
                style: TextStyle(fontSize: 18),
              ),
            SizedBox(height: 20,),
            TextField(
              controller: password,
              decoration: InputDecoration(
              labelText: "Password"
            ),
              style: TextStyle(fontSize: 18),
            ),
              Padding(
                padding: const EdgeInsets.fromLTRB(90, 30, 50, 50),
                child: Row(children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage(userName.text, password.text)));
                    password.clear();
                  }, child: Text("Login", style: TextStyle(fontSize: 18))),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    userName.clear();
                    password.clear();
                  }, child: Text("Sign Up", style: TextStyle(fontSize: 18))),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
