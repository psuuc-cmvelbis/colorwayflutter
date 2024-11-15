import 'package:colorway/screens/edit_palette.dart';
import 'package:flutter/material.dart';

class ColorPaletteDetailsScreen extends StatefulWidget {
  final Map<String, dynamic> selectedPalette;
  final Function(Map<String, dynamic>) addToLibrary;

  ColorPaletteDetailsScreen(this.selectedPalette, this.addToLibrary);

  @override
  State<ColorPaletteDetailsScreen> createState() => _ColorPaletteDetailsScreenState();
}

class _ColorPaletteDetailsScreenState extends State<ColorPaletteDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> colorPalette = widget.selectedPalette['colors'];
    String description = widget.selectedPalette['description'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Color Palette Details',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 220.0,
            width: 220,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Row(
                    children: colorPalette
                        .map(
                          (color) => Expanded(
                            child: Container(
                              color: Color(int.parse('0xFF$color')),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: colorPalette.length,
                itemBuilder: (context, index) => ListTile(
                  title: Container(
                    color: Color(int.parse('0xFF${colorPalette[index]}')),
                    height: 40.0,
                  ),
                  subtitle: Text('${colorPalette[index]}'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF008080),
            ),
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              _showConfirmationDialog(context);
            },
            label: Text(
              'Add to Library',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add to Library'),
          content: Text('Are you sure you want to add this palette to the library?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _addToLibraryAndNavigate();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void _addToLibraryAndNavigate() {
    widget.addToLibrary(widget.selectedPalette);
    print('added');
    Navigator.pop(context); 
    
  }
}
