import 'package:beat_up/screens/artist_screen.dart';
import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  GenreItem({
    @required this.id,
    @required this.title,
    @required this.color,
  });

  void selectGenre(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ArtistScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectGenre(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(1),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
