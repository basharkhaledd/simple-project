import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myapp/screens/Login.dart';
import 'package:myapp/component/Items.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool myvalue = false;
  List<Color> Mycolors = [Colors.white, Colors.white];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 80, top: 7),
              child: Text("Facebook",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ))),
          Container(
              margin: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.messenger_outlined,
                size: 33,
              )),
          Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.facebook,
                size: 35,
              )),

          // Container(
          //     margin: EdgeInsets.only(right: 5),
          //     child: Icon(Icons.settings)),
        ],
      ),
      drawer: Drawer(
          backgroundColor: Colors.blue.shade900,
          child: ListView(
            children: [
              CircleAvatar(
                radius: 110,
                foregroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfBODdXy97e3qPYwPQ0ji36k-CLVOIo6g1iw&usqp=CAU"),
              ),
              Container(
                child: ListTile(
                  title: Text("your name",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    "Bashar qawasmi",
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  title: Text("your gmail",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    "Khaledbashar308@gmail.com",
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                  leading: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                ),
              ),
              SwitchListTile(
                  title: Text("DarKmode",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  secondary: Icon(
                    Icons.dark_mode,
                    color: Colors.white,
                  ),
                  value: myvalue,
                  onChanged: (val) {
                    setState(() {
                      myvalue = !myvalue;
                      if (myvalue == true) {
                        // Mycolors = [Colors.black, Colors.grey];
                      } else if (myvalue == false) {
                        // Mycolors = [Colors.white, Colors.white];
                      }
                    });
                  }),
              SizedBox(
                height: 50,
              ),
            ],
          )),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
              backgroundColor: Colors.blue.shade900,
              // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(70)),
              child: Text(
                "LogOut",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                });
                setState(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                });
              });
        },
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: Mycolors)),
        child: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
                decoration: BoxDecoration(
                    // color: Colors.blue.shade900,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Search for anything',
                      hintText: "",
                      contentPadding: EdgeInsets.all(7),
                      icon: Icon(
                        Icons.search,
                        size: 40,
                        color: Colors.black54,
                      )),
                )),
            Items(),
            Items(),
            Items(),
            Items(),
            Items(),
            Items(),
            Items(),
            Items(),
            Items(),
            Items(),
            Items(),
            Items(),
          ],
        ),
      ),
    );
  }
}
