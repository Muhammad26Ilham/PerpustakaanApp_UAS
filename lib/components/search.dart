import 'package:flutter/material.dart';

class searchWidget extends StatelessWidget{
  const searchWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(                      
                      child: Container(                        
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(31, 167, 165, 165),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center ,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                          ),),
                      )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.notifications))),
                    ),
                  ],
                ),
              );
  }
  
}