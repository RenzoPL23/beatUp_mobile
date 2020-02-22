import 'package:beat_up/models/artist.dart';
import 'package:beat_up/music_data.dart';
import 'package:beat_up/screens/artist_detail_screen.dart';
import 'package:beat_up/screens/artist_screen.dart';
import 'package:beat_up/screens/filters_screen.dart';

import './screens/menu_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'isSolist': false,
    'isBand': false,
  };
  List<Artist> _avaibleArtist = ARTIST_DATA;
  List<Artist> _favoritesArtist = [];

  void _setFilters(Map<String, bool> filtersData) {
    setState(() {
      _filters = filtersData;
      _avaibleArtist = ARTIST_DATA.where((artist) {
        if (_filters['isSolist'] && !artist.isSolist) {
          return false;
        } else if (_filters['isBand'] && !artist.isBand) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorites(String artistId) {
    final existIndex =
        _favoritesArtist.indexWhere((artist) => artist.id == artistId);
    if (existIndex >= 0) {
      setState(() {
        _favoritesArtist.removeAt(existIndex);
      });
    } else {
      setState(() {
        _favoritesArtist
            .add(ARTIST_DATA.firstWhere((artist) => artist.id == artistId));
      });
    }
  }

  bool _isFavoriteArtist(String id) {
    return _favoritesArtist.any((artist) => artist.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeatUp',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.greenAccent,
        canvasColor: Color.fromRGBO(215, 215, 215, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        '/': (_) => MenuScreen(favoritesArtist: _favoritesArtist),
        ArtistScreen.routeName: (_) =>
            ArtistScreen(avaibleArtist: _avaibleArtist),
        ArtistDetailScreen.routeName: (_) => ArtistDetailScreen(
            isFavorite: _isFavoriteArtist, toggleFavorite: _toggleFavorites),
        FilterScreen.routeName: (_) =>
            FilterScreen(currentFilters: _filters, saveFilters: _setFilters),
      },
    );
  }
}
