
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:git_application_2/utilits/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextFieldWithShadow extends StatelessWidget {
  const CustomTextFieldWithShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 9,
            color: ColorConstants.BLACK.withOpacity(.1))
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: ColorConstants.GREYSHADE4,
            border: OutlineInputBorder(borderSide: BorderSide.none),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(bottom: 10,right: 5),
              child: Icon(
                Icons.circle,
                size: 50,
                color: ColorConstants.WHITE,
              ),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: ColorConstants.WHITE,
            ),
            hintText: "Search health data",
            hintStyle: GoogleFonts.montserrat(
                fontSize: 18, color: ColorConstants.WHITE)),
      ),
    );
  }
}
