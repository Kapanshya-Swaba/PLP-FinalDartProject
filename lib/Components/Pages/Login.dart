import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  late SharedPreferences preferences;
  bool loading= false;
  bool isLogedin = false;


  @override
  void initState() {
    super.initState();
    isSignedIn();
  }
  void isSignedIn() async{
    setState(() {
      loading =true;
    });

    preferences = await SharedPreferences.getInstance();
    isLogedin = await googleSignIn.isSignedIn();
    if(isLogedin){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)))
    }
  }
}

@override
  Widget build(BuildContext context) {
    return Container();
  }


