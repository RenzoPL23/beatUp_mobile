import 'package:beat_up/models/artist.dart';
import 'package:beat_up/widgets/artist_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Artist> favoriteArtist;
  FavoritesScreen({@required this.favoriteArtist});
  @override
  // If an list is empty then show a message for add in list
  // else it's show a list of favorites
  Widget build(BuildContext context) {
    if (favoriteArtist.isEmpty) {
      return Center(child: Text('Add your favorites artists'));
    } else {
      // It's created a builder because anyone don't know a size to the list
      // and with builder you can create a list zero to length of the list
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
