import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mainTitle(String t) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0),
    child: Text(
      t,
      textAlign: TextAlign.center,
      style: GoogleFonts.arimo(
        fontSize: 15,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}

Widget smallTitle(String t) {
  return Text(
    t,
    style: GoogleFonts.arimo(
      fontSize: 13,
      fontWeight: FontWeight.w800,
    ),
  );
}

Widget smallSubTitle(String t) {
  return Text(
    t,
    style: GoogleFonts.arimo(
      fontSize: 13,
    ),
  );
}

Widget smallText(String t) {
  return Text(
    t,
    overflow: TextOverflow.ellipsis,
    maxLines: 4,
    style: GoogleFonts.arimo(
      fontSize: 12,
    ),
  );
}
