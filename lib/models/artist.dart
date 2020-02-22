import 'package:flutter/material.dart';

class Artist {
  final String id;
  final List<String> genres;
  final String name;
  final String imageUrl;
  final String description;
  final List<String> songs;
  final List<String> albums;
  final bool isSolist;
  final bool isBand;

  const Artist({
    @required this.id,
    @required this.genres,
    @required this.name,
    @required this.imageUrl,
    @required this.description,
    @required this.songs,
    @required this.albums,
    @required this.isSolist,
    @required this.isBand,
  });
}
