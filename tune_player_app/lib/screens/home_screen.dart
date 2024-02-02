import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_notes_player_app_setup/components/item.dart';
import 'package:music_notes_player_app_setup/models/item_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List<ItemModel> tunes = const [
    ItemModel(color: Color(0xff7401B8), sound: "note1.wav"),
    ItemModel(color: Color(0xff692FC3), sound: "note2.wav"),
    ItemModel(color: Color(0xff5D60CE), sound: "note3.wav"),
    ItemModel(color: Color(0xff5390D9), sound: "note4.wav"),
    ItemModel(color: Color(0xff4FA8DE), sound: "note5.wav"),
    ItemModel(color: Color(0xff47BFE3), sound: "note6.wav"),
    ItemModel(color: Color(0xff56CFE1), sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          "Tunes",
          style: GoogleFonts.gochiHand(fontSize: 30.sp),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => Item(item: e),
            )
            .toList(),
      ),
    );
  }
}
