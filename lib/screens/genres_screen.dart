import 'package:beat_up/music_data.dart';
import 'package:beat_up/widgets/genre_item.dart';
import 'package:flutter/material.dart';

class GenreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      children: MUSIC_GENRES
          .map((musicGen) => GenreItem(
                id: musicGen.id,
                title: musicGen.title,
                color: musicGen.color,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
