import 'package:flutter/material.dart';

class TermsOfService extends StatelessWidget {
  const TermsOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms Of Service'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
           
            children: [
              Text('Terms and Conditions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 10,),
              Text('Welcome to ColorWay, a powerful application designed to enhance your creative journey in the world of design. Please read these Terms and Conditions carefully before using our services.'),
              SizedBox(height: 15),
              Text('1. Acceptance of Terms',style: TextStyle(fontWeight: FontWeight.bold,),),
              SizedBox(height: 10,),
              Text('By accessing or using the ColorWay app, you agree to comply with and be bound by these Terms and Conditions. If you do not agree to these terms, please do not use the app.'),
              SizedBox(height: 10,),
              Text('2. Use of the ColorWay App',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('2.1. Eligibility: ColorWay is intended for use by creative professionals, graphic designers, web developers, marketing experts, students, and educators. By using the app, you affirm that you are at least 13 years old and capable of forming a legally binding contract.'),
              SizedBox(height: 10,),
              Text('2.2. User-Generated Content: ColorWay allows users to create and share color schemes. You are solely responsible for the content you generate, share, or upload. By doing so, you grant ColorWay the right to use, modify, display, and distribute your content within the app.'),
              SizedBox(height: 10,),
              Text('2.3. Responsible Use: Users agree not to use ColorWay for any unlawful or prohibited purpose. This includes, but is not limited to, the creation or distribution of offensive, harmful, or infringing content.'),
              SizedBox(height: 10,),
              Text('3. Features of ColorWay',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('3.1. User-Generated Color Schemes: ColorWay empowers users to create and share their own color schemes, promoting collaboration and community engagement.'),
              SizedBox(height: 10,),
              Text('3.2. Suggestion Palettes: The app offers pre-designed palettes for inspiration, based on color theory, design trends, or user preferences.'),
              SizedBox(height: 10,),
              Text('3.3. Efficient List View: ColorWay provides a list format for easy organization, access, and editing of color palettes for enhanced project management.'),
              SizedBox(height: 10,),
              Text('3.4. Editing Palette: Users can edit existing palettes to refine their vision and make adjustments on the go.'),
              SizedBox(height: 10,),
              Text('3.5. Engaging Gridview with Card Design: A dynamic canvas for organizing and comparing colors, each represented by an informative card with detailed insights.'),
              SizedBox(height: 10,),
              Text('4. Privacy and Data Security',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("4.1. Data Collection: ColorWay may collect and process user data in accordance with our Privacy Policy."),
              SizedBox(height: 10,),
              Text("4.2. Security: We take reasonable measures to protect your data. However, we cannot guarantee the security of information transmitted over the internet."),
              SizedBox(height: 10,),
              Text('5. Updates and Modifications',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('ColorWay reserves the right to update, modify, or discontinue the app or any features at any time without prior notice.'),
              SizedBox(height: 10,),
              Text('6. Disclaimer of Warranty',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('The app is provided "as is" without warranty of any kind. ColorWay is not responsible for any errors, omissions, or inaccuracies in the content.'),
              SizedBox(height: 10,),
              Text('7. Limitation of Liability',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('ColorWay and its affiliates shall not be liable for any direct, indirect, incidental, special, or consequential damages resulting from the use or inability to use the app.'),
              SizedBox(height: 10,),


            ],
          ),
        ),
      ),
    );
  }
}