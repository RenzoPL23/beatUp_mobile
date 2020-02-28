import 'package:beat_up/models/artist.dart';
import 'package:beat_up/widgets/main_drawer.dart';

import '../screens/favorites_screen.dart';
import '../screens/genres_screen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  final List<Artist> favoritesArtist;
  MenuScreen({@required this.favoritesArtist});
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedPageIndex = 0;
  List<Map<String, Object>> _pages;

  // initialize the pages for change in the screen
  @override
   void initState() {
    super.initState();
    _pages = [
      {
        'page': GenreScreen(),
        'title': 'Categories',
      },
      {
        'page': FavoritesScreen(favoriteArtist: widget.favoritesArtist,),
        'title': 'Your Favorites',
      },
    ];
  }
  // this function is for switch in pages
  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      // in this part select the pages that It will show 
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        //funtion for change the pages
        onTap: _selectedPage,
        // currentIndex is part of ontap for realise change in funtion
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Genres'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
