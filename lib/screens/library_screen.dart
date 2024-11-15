import 'package:flutter/material.dart';
import 'edit_palette.dart';

class LibraryScreen extends StatefulWidget {
  final List<Map<String, dynamic>> selectedColorPalettes;

  LibraryScreen(this.selectedColorPalettes);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  void _addToLibrary(Map<String, dynamic> selectedPalette) {
    setState(() {
      widget.selectedColorPalettes.add(selectedPalette);
    });
  }

  void _removeFromLibrary(int index) {
    setState(() {
      widget.selectedColorPalettes.removeAt(index);
    });
  }

  void _showColorPaletteDetails(BuildContext context, int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EditPaletteScreen(
          widget.selectedColorPalettes[index],
          _addToLibrary,
          onDelete: () => _removeFromLibrary(index),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
      ),
      body: GridView.builder(
        itemCount: widget.selectedColorPalettes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          int reversedIndex = widget.selectedColorPalettes.length - 1 - index;
          return ColorPaletteCard(
            colorPalette: widget.selectedColorPalettes[reversedIndex]['colors'],
            onTap: () => _showColorPaletteDetails(context, reversedIndex),
          );
        },
      ),
    );
  }
}

class ColorPaletteCard extends StatelessWidget {
  final List<String> colorPalette;
  final VoidCallback onTap;

  ColorPaletteCard({
    required this.colorPalette,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          elevation: 5.0,
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
    );
  }
}
