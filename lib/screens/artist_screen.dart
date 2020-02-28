import 'package:beat_up/widgets/artist_item.dart';
import 'package:flutter/material.dart';
import '../models/artist.dart';

class ArtistScreen extends StatefulWidget {
  static const routeName = '/artist-screen';
  List<Artist> avaibleArtist;

  ArtistScreen({@required this.avaibleArtist});
  @override
  _ArtistScreenState createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen> {
  String genreTitle;
  List<Artist> displayedArtist;
  var _loadData = false;

  // didChangeDependencies is used for update the information for each the builder execute
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // it's verify if the data is charge
    if (!_loadData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;

      final genreId = routeArgs['id'];
      genreTitle = routeArgs['title'];

      displayedArtist = widget.avaibleArtist.where((artist) {
        return artist.genres.contains(genreId);
      }).toList();
      _loadData = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(genreTitle),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_, index) {
            return ArtistItem(
              id: displayedArtist[index].id,
              name: displayedArtist[index].name,
              imageUrl: displayedArtist[index].imageUrl,
            );
          },
          itemCount: displayedArtist.length,
        ),
      ),
    );
  }
}
