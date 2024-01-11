import 'package:flutter/material.dart';
import 'package:perpustakaan_uas/views/loginAct.dart';
import 'package:perpustakaan_uas/views/signup.dart';

class startPage extends StatefulWidget{
  const startPage({super.key});
  
  @override
  State<startPage> createState() => _startPage();  
}

class _startPage extends State<startPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 75),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text("Welcome to\nMy Library App", 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold) ,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("Enjoy new experience to get book form library with easy ways to get. ", 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.grey),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset('asset/img/6607.png'),
              ),
              Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          width: 500,   
                          height: 100,           
                          decoration: BoxDecoration(
                            //color: Colors.blueAccent,
                            borderRadius:BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),
                              ),);
                          }, 
                          child: Text("Login", 
                              style: TextStyle(
                                fontSize: 24, 
                                color: Colors.white,
                                fontWeight: FontWeight.bold),))
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(          
                      width: 500,
                      height: 100,              
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius:BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => signupPage(),
                              ));
                          }, 
                          child: Text("Sign Up", 
                              style: TextStyle(
                                fontSize: 20, 
                                color: Colors.white,
                                fontWeight: FontWeight.bold),))
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