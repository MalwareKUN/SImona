import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projekke10/calender.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController textarea = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),),
                  );
                },
                  icon: Icons.home,
                  text: 'Home',),
              GButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Calender(),),
                  );
                },
                  icon: Icons.calendar_month,
                  text: 'check In, Check out',),
            ],),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 45),
              child: const Text(
                "SELAMAT DATANG,",
                style: TextStyle(
                  fontFamily: "NexaBold",
                  color: Colors.black54,
                  fontSize: 22,
                ),
              ),
            ), Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Pegawai",
                style: TextStyle(
                  fontFamily: "NexaRegular",
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 15),
              child: const Text(
                "CATATAN KEGIATAN",
                style: TextStyle(
                  fontFamily: "NexaBold",
                  fontSize:18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(1),
              width: 5000,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ]),
              child: const Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       ListTile(
                         title: Text("Nama Lengkap"),
                         subtitle: Text("Wahid Habib Saputro"),
                       ),
                        ListTile(
                          title: Text("Waktu Kegiatan"),
                          subtitle: Text("Kamis, 12 Oktober 2023 15:16"),
                        ),ListTile(
                          title: Text("Status Kegiatan"),
                          subtitle: Text("Check In dapat Dilakukan hingga Pukul 18:00:00"),
                        ),
                        ListTile(
                          title: Text("Status Geolocation"),
                          subtitle: Text("Lokasi anda berada pada range lokasi absensi"),
                        ),
                        ListTile(
                          title: Text("Lokasi Absen"),
                          subtitle: Text("Gedung Lab TS, TI dan TL"),
                        ),
                        ListTile(
                          title: Text("Jarak"),
                          subtitle: Text("8 M"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(20.0) ,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: textarea,
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      hintText: "Rencana Kegiatan",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black)
                      ),
                    ),
                  ),
                  MaterialButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print(textarea.text);
                        }
                      },
                    color: Colors.blueAccent,
                    child: const Text('Simpan Kegiatan', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            SlideAction(
              borderRadius: 15,
              elevation: 0,
              innerColor: Colors.white,
              outerColor: Colors.blueAccent,
              text: "Geser untuk Absen",
              textStyle: const TextStyle(color: Colors.white,
                fontFamily: "Nexa Bold",
                fontSize: 24,
              ),
              onSubmit: (){
              },
            )
          ],
        ),
      ),
    );
  }
}
