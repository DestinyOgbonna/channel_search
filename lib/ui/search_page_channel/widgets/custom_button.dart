import 'package:channel_search/ui/search_page_channel/constant/colors.dart';
import 'package:channel_search/ui/search_page_channel/views/search_view/search_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.buttontext}) : super(key: key);

  String? buttontext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SearchPageView()));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: greenColor,
        ),
        child: Text(
          '$buttontext',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 19),
        ),
      ),
    );
  }
}
