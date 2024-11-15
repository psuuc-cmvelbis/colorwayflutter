import 'package:colorway/datacolors/colors.dart';
import 'package:colorway/screens/palette_details.dart';
import 'package:flutter/material.dart';

class RecommendationScreen extends StatefulWidget {
  final List<Map<String, dynamic>> selectedColorPalettes;

  RecommendationScreen(this.selectedColorPalettes);
  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  
 
  List<Map<String, dynamic>> selectedColorPalettes = [];

  void addColorPalette(List<String> colors, String description) {
    setState(() {
      selectedColorPalettes.add({
        'colors': colors,
        'description': description,
      });
    });
  }

  void _addToLibrary(Map<String, dynamic> selectedPalette,
      {bool addToLibrary = true}) {
    setState(() {
      if (addToLibrary) {
        widget.selectedColorPalettes.add(selectedPalette);
      }
    });
  }

  void _addToRecommendies(Map<String, dynamic> selectedPalette) {
    setState(() {
      widget.selectedColorPalettes.add(selectedPalette);
    });
  }

  void _showColorPaletteDetails(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            ColorPaletteDetailsScreen(colorPalettes[index], (selectedPalette) {
          _addToLibrary(selectedPalette, addToLibrary: true);
        }),
      ),
    );
  }

  void _showColorPaletteDetailsz(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            ColorPaletteDetailsScreen(colorPalettes[index], _addToRecommendies),
      ),
    );
  }

  void onPublish(Map<String, dynamic> palette) {
  
    _addToRecommendies(palette);
    print('Published in RecommendationScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
  itemCount: colorPalettes.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 1.1, 
  ),
  itemBuilder: (context, index) {
    return GestureDetector(
      onTap: () => _showColorPaletteDetailsz(index),
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
              children: (colorPalettes[index]['colors'] as List<String>)
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
  },
)

    );
  }
}
