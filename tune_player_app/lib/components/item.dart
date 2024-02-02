import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_notes_player_app_setup/models/item_model.dart';

class Item extends StatelessWidget {
  final ItemModel item;
  const Item({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          item.playsound();
        },
        child: Container(
          width: 1.sw,
          color: item.color,
        ),
      ),
    );
  }
}
