import 'package:flutter/material.dart';

class displayWidget extends StatelessWidget {
  String? image;
  displayWidget({super.key, 

    required this.image,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,),
      child: SizedBox(
        width: 350,
        //Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                child: 
                  Image.asset(image!,
                  height: 250,
                  fit: BoxFit.cover,
                  ),
                ),
                /*Positioned(
                  bottom: 10,
                  right: 10, 
                  child: Container(
                    height: 40,
                    width: 40,                    
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: (){
                      },
                      icon: Icon(Icons.add, color: Colors.white,),),
                  ))*/
              ],
            ),
            /*Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(judul!),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(status! , style: TextStyle(color: Colors.blue),),
                Text(jumlah!),
              ],
            ),*/            
          ],
        ),
      ),
    );
  }
}