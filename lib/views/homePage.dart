import 'package:flutter/material.dart';
import 'package:perpustakaan_uas/components/displayCard.dart';
import 'package:perpustakaan_uas/data/display.dart';

import '../components/card.dart';
import '../components/search.dart';
import '../data/product.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

    @override
  State<homePage> createState() => _homePage();
}

class _homePage extends State<homePage> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
  NavigationDestinationLabelBehavior.alwaysShow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark),
            label: 'Loan',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: InkWell(
              child: Icon(Icons.person)),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search and notifikasi
              searchWidget(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20, 
                  right: 20,
                  bottom: 10,),
                child: Text("Leates Update",
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.w500,)
                ,),
              ),
              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                physics:BouncingScrollPhysics(),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    ...dataDisplay.map(
                      (e)=>displayWidget(
                      image: e['image'].toString(),
                      ),)
                    
                    //cardWidget(),
                    //cardWidget(),
                    //SizedBox(width: 20,),
                ]),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20, 
                  right: 20,
                  bottom: 10,),
                child: Text("Bookshelf",
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.w500,)
                ,),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        ...dataProduct.map(
                        (e)=>cardWidget(
                          image: e['image'].toString(),
                          pinjam: e['pinjam'].toString(),
                          judul: e['judul'].toString(),
                          status: e['status'].toString(), 
                          jumlah: e['jumlah'].toString()
                        ),)
                      ],
                    ),
                    /*Row(
                      children: [
                        
                        Image.asset('asset/img/display-buku (4).jpg',width: 220, ),
                        SizedBox(width: 20,),
                        Image.asset('asset/img/display-buku (5).jpg',width: 220, ),
                        SizedBox(width: 20,),
                        Image.asset('asset/img/display-buku (6).jpg',width: 200, ),
                      ],
                    )*/
                  ],
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}

