import 'package:flutter/material.dart';

class Genre {
  final String id;
  final String title;
  final Color color;
  // constructor to be used in the data base as a const list
  const Genre({
    @required this.id,
    @required this.title,
    @required this.color,
  });
}
