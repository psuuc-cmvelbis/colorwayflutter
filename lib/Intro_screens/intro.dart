import 'package:colorway/datacolors/introdata.dart';
import 'package:colorway/screens/home.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
   List<Map<String, dynamic>> selectedColorPalettes = [];

    int introIndex = 0;
 void nextImage() {
    setState(() {
      if (introIndex < 2) {
        introIndex++;
      } else {
       
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Name(selectedColorPalettes),
          ),
        );
      }
    });
  }

    Color getBackgroundColor(int index) {
    if (index < backgroundColors.length) {
      return backgroundColors[index] ?? Color.fromRGBO(239, 239, 239, 1);
    } else {
      return Color.fromRGBO(239, 239, 239, 1);  
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: getBackgroundColor(introIndex),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(background_introImages[introIndex]),
       const SizedBox(
         height: 12,
       ),
        Text(background_intro[introIndex][0], style: TextStyle(fontSize: 32, 
       fontWeight: FontWeight.w300,
       color: Color.fromARGB(255, 10, 10, 8)
       ),
       ),
       const SizedBox(
       height: 15,
     ),
             Text(background_introdesc[introIndex][0], style: TextStyle(fontSize: 16, 
       fontWeight: FontWeight.w300,
       color: Colors.black45,
       ),
       ),
        const SizedBox(
       height: 15,
     ),
     ElevatedButton(onPressed: nextImage, child: Text('Next'),),
     
    
        ],
      ),
    );
  }
}