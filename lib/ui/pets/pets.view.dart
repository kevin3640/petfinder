import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/card.dart';

class PetsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: AutoSizeText(
                  "My Pets",
                  minFontSize: 28,
                  style: GoogleFonts.openSans(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[400]),
                ),
              ),
            ),
            ListTileButton(
              label: 'Add Pet',
              icon: Icons.add,
              onPressed: () {},
            ),
            PetCard(
              onTap: () {},
              name: "Maxiee",
              caption: "Fun little pup always filled with energy",
              age: '9 months',
              imageURL: 'assets/images/i1.jpg',
            ),
            PetCard(
              onTap: () {},
              name: "Benji",
              caption: "Playful and Joyful",
              age: '2 years',
              imageURL: 'assets/images/i3.jpg',
            )
          ],
        ),
      ),
    );
  }
}