import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
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
              margin: const EdgeInsets.only(top: 25),
              child: const Text(
                "CATATAN KEGIATAN",
                style: TextStyle(
                  fontFamily: "NexaBold",
                  fontSize:18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 300,
              width: 1000,
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
                      children: [
                        Text(
                          "Nama Lengkap: ",
                          style: TextStyle(
                            fontFamily: "NexaRegular",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Waktu Kegiatan",
                          style: TextStyle(
                            fontFamily: "NexaRegular",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Status Kegiatan: Check In dapat dilakukan hingga pukul 18:00:00:00",
                          style: TextStyle(
                            fontFamily: "NexaRegular",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(20.0) ,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Rencana Kegiatan',
                        border: OutlineInputBorder(),
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
