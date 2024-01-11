import 'dart:ui';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});
  
  @override
  State<loginPage> createState() => _loginPage();
  }
  
  class _loginPage extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('asset/img/icon-buku (6).png', width: 300,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("Welcome to\nMy Library App", 
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold) ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Enjoy new experience to get book\nform library with easy ways to get. ", 
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, color: Colors.grey),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,              
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius:BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Text("Login", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15, 
                        color: Colors.white, 
                        fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity,              
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Text("SignUp", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15, 
                        color: Colors.blueAccent, 
                        fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
