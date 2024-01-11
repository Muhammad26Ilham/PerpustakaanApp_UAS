import 'package:flutter/material.dart';
import 'package:perpustakaan_uas/views/loginAct.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});
   
  
  @override
  State<signupPage> createState() => _signupPage();
}

class _signupPage extends State<signupPage>{
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 55, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('asset/img/icon-buku (1).png',
                      width: 45, height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Text("My Library App", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0, bottom: 32),
                        child: Text("Sign Up and lets enjoy new experiences", 
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey),),
                      ),
                      Text("Username",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: TextFormField(
                              decoration: InputDecoration(                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(width: 0, style: BorderStyle.none,)),
                                hintText: "Username",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0)
                                ),
                                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70),
                                
                              ),                          
                          ),
                          Text("Email",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              decoration: InputDecoration(                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(width: 0, style: BorderStyle.none,)),
                                hintText: "Email",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0)
                                ),
                                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70),
                                
                              ),                          
                          ),
                          Text("Alamat",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              decoration: InputDecoration(                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(width: 0, style: BorderStyle.none,)),
                                hintText: "Alamat",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0)
                                ),
                                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70),
                                
                              ),                          
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text("Create Password",
                              style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: TextFormField(
                              obscureText: isHide,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    isHide = !isHide;
                                    setState(() { });
                                  }, 
                                  icon: Icon(
                                    isHide ? Icons.visibility : Icons.visibility_off, 
                                    size: 20, color: Colors.grey,)),                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(width: 0, style: BorderStyle.none,)),
                                hintText: "Create Password",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0)
                                ),
                                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text("Confirmation Password",
                              style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: TextFormField(
                              obscureText: isHide,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    isHide = !isHide;
                                    setState(() { });
                                  }, 
                                  icon: Icon(
                                    isHide ? Icons.visibility : Icons.visibility_off, 
                                    size: 20, color: Colors.grey,)),                          
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(width: 0, style: BorderStyle.none,)),
                                hintText: "Confirmation Password",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0)
                                ),
                                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70),
                              ),
                          ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Container(          
                          width: 500,
                          height: 100,              
                          decoration: BoxDecoration(
                            //color: Colors.white,
                            borderRadius:BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),
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
          /*Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account yet?", style: TextStyle(),),
                Text(" Sign up now!", style: TextStyle(color: Colors.blue),),
              ],
            ),
          )*/
        ],
      
      )
    );
  }
}