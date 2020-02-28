import 'package:beat_up/music_data.dart';
import 'package:flutter/material.dart';

class ArtistDetailScreen extends StatelessWidget {
  static const routeName = '/artist-detail-screen';
  final Function isFavorite;
  final Function toggleFavorite;

  ArtistDetailScreen(
      {@required this.isFavorite, @required this.toggleFavorite});

// These function is created because it is repeated in different parts of the code
// and it is necessary to extract in a single function
  Widget buildTitle(BuildContext ctx, String title) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 300,
      child: Text(
        title,
        style: Theme.of(ctx).textTheme.title,
        textAlign: TextAlign.start,
      ),
    );
  }
  Widget buildContainer(List<String> list) {
    return Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          leading: CircleAvatar(
            child: Text('# ${index + 1}'),
          ),
          subtitle: Container(
            height: 40,
            width: 100,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white54,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              list[index],
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        itemCount: list.length,
      ),
    );
  }
//
  @override
  Widget build(BuildContext context) {
    final artistId = ModalRoute.of(context).settings.arguments as String;
    final selectedArtist =
        ARTIST_DATA.firstWhere((artist) => artist.id == artistId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedArtist.name}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  child: Image.network(
                    selectedArtist.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 400,
                    color: Colors.black54,
                    child: Text(
                      selectedArtist.description,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            buildTitle(context, 'Top Songs'),
            buildContainer(selectedArtist.songs),
            buildTitle(context, 'Albums'),
            buildContainer(selectedArtist.albums),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(artistId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => toggleFavorite(artistId),
      ),
    );
  }
}
