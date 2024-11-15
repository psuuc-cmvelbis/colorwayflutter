import 'package:colorway/datacolors/colors.dart';
import 'package:flutter/material.dart';

class CreateColorPalette extends StatefulWidget {
  final Map<String, dynamic> selectedPalette;
  final Function(Map<String, dynamic>) addToLibrary;

  CreateColorPalette(this.selectedPalette, this.addToLibrary);

  @override
  State<CreateColorPalette> createState() => _CreateColorPaletteState();
}

class _CreateColorPaletteState extends State<CreateColorPalette> {
  List<String> colorPalette = [];
  late TextEditingController descriptionController;
  late List<TextEditingController> colorControllers;
  Color selectedColor = Colors.transparent;

  void _generateRandomColors() {
    setState(() {
      colorPalette = List.generate(5, (index) => DataColors.generateRandomColor());
      colorControllers = colorPalette
          .map((color) => TextEditingController(text: color))
          .toList();
    });
  }

  void _clearTextFields() {
    setState(() {
      colorPalette = List.filled(5, 'D9D9D9');
      colorControllers = colorPalette
          .map((color) => TextEditingController(text: color))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    colorPalette = List.from(widget.selectedPalette['colors']);
    descriptionController =
        TextEditingController(text: widget.selectedPalette['description']);
    colorControllers = colorPalette
        .map((color) => TextEditingController(text: color))
        .toList();
  }

  Future<void> _showSaveConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text("Confirm to save this color palette to your library?"),
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

                widget.addToLibrary({
                  'colors': colorPalette,
                  'description': descriptionController.text,
                });
                print('Saved');

                Navigator.pop(context);
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
Widget build(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: colorPalette.map((color) => Color(int.parse('0xFF$color'))).toList(),
      ),
    ),
    child: Scaffold(
      appBar: AppBar(
        title: Text('Create'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => _clearTextFields(),
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: colorPalette.length,
              itemBuilder: (context, index) => ListTile(
                title: Container(
                  color: Color(int.parse('0xFF${colorPalette[index]}')),
                  height: 50.0,
                ),
                subtitle: SizedBox(
                  height: 40,
                  child: TextField(
                    controller: colorControllers[index],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefix: Container(
                        child: Text(
                          '#',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
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
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter description here',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             ElevatedButton.icon(
  style: ElevatedButton.styleFrom(
    primary: Color(0xFF008080), 
  ),
  icon: Icon(Icons.refresh,color: Colors.white,),
  onPressed: _generateRandomColors,
  label: Text('Random',style: TextStyle(color: Colors.white),),
),

            ElevatedButton.icon(
  style: ElevatedButton.styleFrom(
    primary: Color(0xFF008080), 
  ),
                icon: Icon(Icons.add,color: Colors.white,),
                onPressed: () => _showSaveConfirmationDialog(context),
                label: Text('Create',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    ),
  );
}

}
