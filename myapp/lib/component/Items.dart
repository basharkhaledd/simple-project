import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Items extends StatelessWidget {
  // const Items({super.key});

  String? title;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 60,
      ),
      Container(
          alignment: Alignment.topLeft,
          child: ListTile(
            title: Text("Bashra_Qawasmi",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
            subtitle: Text("$title"),
            leading: CircleAvatar(),
          )),
      Container(
        width: double.infinity,
        child: Image(
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO4t-qTDVTAxuHfD6G2vx149bLGFB78dXHOA&usqp=CAU"),
          fit: BoxFit.cover,
        ),
      ),
      Container()
    ]);
  }
}
