import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bigTitle(t) {
  return Text(t,
      style: GoogleFonts.arimo(
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ));
}

Widget bigSubTitle(t) {
  return Text(t,
      style: GoogleFonts.arimo(
        fontSize: 15,
        color: Colors.grey,
        fontWeight: FontWeight.w800,
      ));
}

Widget bigPrice(t) {
  return Text(t + ' \u20bd',
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold));
}

Widget bigWeight(t) {
  return Text(t + ' г.',
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
}

Widget smallPrice(t) {
  return Text(t + ' \u20bd',
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
}

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

Widget mainTitleLeft(String t) {
  return Text(
    t,
    textAlign: TextAlign.left,
    style: GoogleFonts.arimo(
      fontSize: 15,
      fontWeight: FontWeight.w800,
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
