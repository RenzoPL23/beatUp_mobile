import 'package:beat_up/screens/artist_detail_screen.dart';
import 'package:flutter/material.dart';

class ArtistItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;

  ArtistItem({
    @required this.id,
    @required this.name,
    @required this.imageUrl,
  });
  // this function redirect the route a artist that it was select
  void selectArtis(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      ArtistDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> selectArtis(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                // this widget is for give shape circular to an image or content
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: 200,
                    color: Colors.black54,
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
