import 'package:colorway/Intro_screens/about.dart';
import 'package:colorway/screens/create_screen.dart';
import 'package:colorway/screens/library_screen.dart';
import 'package:colorway/screens/palette_details.dart';
import 'package:colorway/screens/recommendation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Name extends StatefulWidget {
  final List<Map<String, dynamic>> selectedColorPalettes;

  Name(this.selectedColorPalettes, {Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  List<Map<String, dynamic>> colorPalettes = [
    {
      'colors': ['D9D9D9', 'D9D9D9', 'D9D9D9', 'D9D9D9', 'D9D9D9'],
      'description': '',
    },
  ];
  List<Map<String, dynamic>> selectedColorPalettes = [];

  void _addToLibrary(Map<String, dynamic> selectedPalette) {
    setState(() {
      widget.selectedColorPalettes.add(selectedPalette);

    });
  }

  void _showColorPaletteDetails(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            CreateColorPalette(colorPalettes[index], _addToLibrary),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorWay'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.blue, Colors.green, Colors.red, Colors.yellow],
  ),
),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ColorWay',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Recommendation'),
              onTap: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (context) =>
                        RecommendationScreen(widget.selectedColorPalettes),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Create'),
               onTap: () => _showColorPaletteDetails(0),
               
               
            ),
            ListTile(
              title: Text('Library'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        LibraryScreen(widget.selectedColorPalettes),
                  ),
                );
              },
            ),
             ListTile(
              title: Text('About'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: ((context) => AboutApp())));
              },
            ),
            ListTile(
              title: Text('Exit'),
              onTap: () {
              SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
      body: RecommendationScreen(widget.selectedColorPalettes),

    );
  }
}
