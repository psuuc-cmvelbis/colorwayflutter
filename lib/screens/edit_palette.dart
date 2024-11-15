import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class EditPaletteScreen extends StatefulWidget {
  final Map<String, dynamic> selectedPalette;
  final Function(Map<String, dynamic>) addToLibrary;
  final VoidCallback onDelete;

  EditPaletteScreen(this.selectedPalette, this.addToLibrary, {required this.onDelete});

  @override
  State<EditPaletteScreen> createState() => _EditPaletteScreenState();
}

class _EditPaletteScreenState extends State<EditPaletteScreen> {
  List<String> colorPalette = [];
  late TextEditingController descriptionController;
  Color selectedColor = Colors.transparent; 

  @override
  void initState() {
    super.initState();
    colorPalette = List.from(widget.selectedPalette['colors']);
    descriptionController = TextEditingController(text: widget.selectedPalette['description']);
  }

  Future<void> _showDeleteConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Delete'),
          content: Text('Are you sure you want to delete this palette?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                widget.onDelete();
                Navigator.pop(context);
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showSaveConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Save'),
          content: Text('Are you sure you want to save the changes?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _saveChanges();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }



  void _saveChanges() {
    widget.addToLibrary({
      'colors': colorPalette,
      'description': descriptionController.text,
    });
    print('Saved');
    widget.onDelete();
    Navigator.pop(context);
  }




@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Edit Color Palette'),
      actions: [
        IconButton(
          onPressed: () => _showDeleteConfirmationDialog(context),
          icon: Icon(Icons.delete_forever),
        )
      ],
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200.0,
            width: 220,
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
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: colorPalette.length,
              itemBuilder: (context, index) => ListTile(
                title: Container(
                  color: Color(int.parse('0xFF${colorPalette[index]}')),
                  height: 40.0,
                ),
                subtitle: SizedBox(
                  height: 25,
                  child: TextField(
                    decoration: InputDecoration(
                      prefix: Container(
                        child: Text(
                          '#',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      hintText: '${colorPalette[index]}',
                    ),
                    onChanged: (newColor) {
                      colorPalette[index] = newColor;
                      setState(() {
                        selectedColor = Color(int.parse('0xFF$newColor'));
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a Description',
              ),
            ),
          ),
  
  SizedBox(height: 20,),
      ElevatedButton.icon(
  style: ElevatedButton.styleFrom(
    primary: Color(0xFF008080), 
  ),
                icon: Icon(Icons.save,color: Colors.white,),
              onPressed: () => _showSaveConfirmationDialog(context),
                label: Text('Save',style: TextStyle(color: Colors.white),),
              ),
        ],
      ),
    ),
  );
}
}