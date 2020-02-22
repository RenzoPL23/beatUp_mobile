import 'package:beat_up/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filter-screen';
  final Function saveFilters;
  final Map<String, bool> currentFilters;
  FilterScreen({@required this.currentFilters, @required this.saveFilters});

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _isSolist = false;
  bool _isBand = false;

  @override
  void initState() {
    super.initState();
    _isSolist = widget.currentFilters['isSolist'];
    _isBand = widget.currentFilters['isBand'];
  }

  Widget _builtSwichListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(description),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Select type',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          _builtSwichListTile('Solist', 'Only solists', _isSolist, (newValue) {
            setState(() {
              _isSolist = newValue;
              _saveStateFilters();
            });
          }),
          _builtSwichListTile('Band', 'Only bands', _isBand, (newValue) {
            setState(() {
              _isBand = newValue;
              _saveStateFilters();
            });
          }),
        ],
      ),
    );
  }

  void _saveStateFilters() {
    final selectedFilters = {
      'isSolist': _isSolist,
      'isBand': _isBand,
    };
    widget.saveFilters(selectedFilters);
  }
}
