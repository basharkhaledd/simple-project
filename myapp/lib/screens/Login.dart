import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController valuofusername = new TextEditingController();
  TextEditingController valueofpassword = new TextEditingController();
  String? username;
  String? password;
  bool a = false;
  String myselecteditem = "English";
  List listItem = [
    "English",
    "Francais",
    "Espanol",
    "Turkce",
    "اردو",
    "Italiano",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1MzB_gsJsX92DBKr-6KZqpsgUy8uX62KEg&usqp=CAU",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              width: 100,
              child: DropdownButton(
                  value: myselecteditem,
                  icon: Icon(Icons.language),
                  items: listItem
                      .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      myselecteditem = val.toString();
                    });
                  }),
            ),
            Container(
              width: 320,
              child: TextFormField(
                controller: valuofusername,
                decoration: const InputDecoration(
                    labelText: 'Phone or email (enter bash)',
                    hintText: "",
                    contentPadding: EdgeInsets.all(7),
                    icon: Icon(Icons.person)),
              ),
            ),
            Container(
              width: 320,
              child: TextFormField(
                obscureText: true,
                controller: valueofpassword,
                decoration: const InputDecoration(
                  // border: UnderlineInputBorder(),
                  hintText: "",
                  labelText: 'Password (enter bash)',
                  icon: Icon(Icons.password),
                  suffix: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            Container(
              width: 320,
              child: CheckboxListTile(
                  title: Text("save password on this web"),
                  value: a,
                  onChanged: (val) {
                    setState(() {
                      a = val!;
                    });
                  }),
            ),
            Container(
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue.shade900,
                    ),
                  ),
                  onPressed: () {
                    if (valueofpassword.text == "bash" &&
                        valuofusername.text == "bash") {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Container(
                                height: 85,
                                child: Column(
                                  children: [
                                    Text(
                                        "username or password wrong...  || missing value",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        )),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 100, top: 10),
                                      child: Row(
                                        children: [
                                          Icon(Icons.add_reaction_outlined),
                                          Icon(Icons.add_reaction_outlined),
                                          Icon(Icons.add_reaction_outlined)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              width: 170,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    color: Color(0xFF0D47A1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                "____________________ OR _____________________",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ),
            Container(
              width: 280,
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.green.shade900,
                    ),
                  ),
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return Home();
                    // }));
                  },
                  child: Text(
                    "Create new Facebook account",
                    style: TextStyle(fontSize: 15),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
