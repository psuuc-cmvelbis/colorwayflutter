import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ColorWay Cookie Policy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CookiePolicyScreen(),
    );
  }
}

class CookiePolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cookie Policy for ColorWay App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'ColorWay Cookie Policy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Rationale:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                'In the dynamic realm of design, ColorWay aims to enhance user experience and provide a platform for creative collaboration. To achieve this, we use cookies to improve the functionality and performance of our application.',
              ),
              SizedBox(height: 16),
              Text(
                'Features:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                '1. User-Generated Color Schemes: ColorWay allows users to create and share color schemes, fostering a collaborative community for designers.',
              ),
              SizedBox(height: 10,),
              Text(
                '2. Suggestion Palettes: To inspire creativity, ColorWay suggests predesigned palettes based on various factors.',
              ),
              SizedBox(height: 10,),
              Text(
                '3. Efficient List View for Library Integration: ColorWay provides a streamlined list view for easy organization and access to color palettes.',
              ),
              SizedBox(height: 10,),
              Text(
                '4. Editing Palette: Designers can edit existing palettes to refine their vision and achieve the perfect color harmony.',
              ),
              SizedBox(height: 10,),
              Text(
                '5. Engaging Gridview with Card Design: ColorWay offers a dynamic canvas for organizing and comparing hues in a visually stimulating grid.',
              ),
              SizedBox(height: 16),
              Text(
                'Target Users:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                'ColorWay is designed for creative professionals, including graphic designers, web developers, and marketing experts. It caters to users of all skill levels, from beginners to seasoned professionals.',
              ),
              SizedBox(height: 16),
              Text(
                'Importance and Novelty of Application:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                'ColorWay is a vital tool for designers, streamlining the creation and management of color schemes. Its unique features make it a fresh and essential choice in the realm of design applications.',
              ),
              SizedBox(height: 16),
              Text(
                'Use of Cookies:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                'ColorWay uses cookies to enhance user experience and improve the functionality of the application. By using ColorWay, you consent to the use of cookies in accordance with our Cookie Policy.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
