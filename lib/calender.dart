

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projekke10/home.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.blueAccent,
            activeColor: Colors.blueAccent,
            tabBackgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            tabs: [
              GButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Calender(),),
                  );
                },
                icon: Icons.calendar_month,
                text: 'Check In, Check Out',),
              GButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),),
                  );
                },
                icon: Icons.home,
                text: 'Home',),
            ],),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2,
                height: 48,
                child: Column(
                  children: [
                    Text("KEGIATAN HARI KAMIS"),
                    Text("12 OKT 2023"),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                transformAlignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text("Total Jam Kerja"),
                    ),
                    Center(
                      child: Text("00 Jam 00 Menit"),
                    ),

                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 48,
                        color: Color(0xff303030),
                        child: Text("CHECK IN", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        child: Text("07:00", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),),
                        decoration: BoxDecoration(

                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),Container(

                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 48,
                        color: Color(0xff303030),
                        alignment: Alignment.center,
                        child: Text("CHECK OUT", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        child: Text("15:56", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),),
                        decoration: BoxDecoration(

                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 48,
                        color: Color(0xff303030),
                        alignment: Alignment.center,
                        child: Text("RENCANA KEGIATAN", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        child: Text("Makan Rek", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),),
                        decoration: BoxDecoration(

                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),

        ],
      ),

    );
  }
}
