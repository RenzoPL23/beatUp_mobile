import 'package:beat_up/models/artist.dart';
import 'package:beat_up/widgets/artist_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Artist> favoriteArtist;
  FavoritesScreen({@required this.favoriteArtist});
  @override
  Widget build(BuildContext context) {
    if (favoriteArtist.isEmpty) {
      return Center(child: Text('Add your favorites artists'));
    } else {
      return ListView.builder(
        itemBuilder: (_, index) {
          return ArtistItem(
            id: favoriteArtist[index].id,
            name: favoriteArtist[index].name,
            imageUrl: favoriteArtist[index].imageUrl,
          );
        },
        itemCount: favoriteArtist.length,
      );
    }
  }
}
