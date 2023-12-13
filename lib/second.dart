import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  var user;
  var pass;

  SecondPage(this.user, this.pass, {super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Profile page",)),
      ),
      body: Center(
          child: Text("Welcome, ${widget.user}", style: TextStyle(fontSize: 30))),
    );
  }
}
