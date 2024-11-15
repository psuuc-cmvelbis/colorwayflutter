import 'package:colorway/AboutScreen/contact.dart';
import 'package:colorway/AboutScreen/cookiepolicy.dart';
import 'package:colorway/AboutScreen/privacypolicy.dart';
import 'package:colorway/AboutScreen/tos.dart';
import 'package:colorway/AboutScreen/developer.dart';
import 'package:colorway/Intro_screens/intro.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About'),
        
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Gap(20),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Card(
  elevation: 5,
  child: Container(
    padding: const EdgeInsets.all(40.0),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.blue.withOpacity(0.7),
          Colors.red.withOpacity(0.7),
          Colors.green.withOpacity(0.7),
          Colors.yellow.withOpacity(0.7),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'From a creative to all the others.',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 5),
        Text('Made by', style: TextStyle(color: Colors.black87)),
        SizedBox(height: 5),
        Text(
          'Christian Mark Velbis | Clarence Vince Razo',
          style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 10),
        ),
      ],
    ),
  ),
),
              ),
               Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  elevation: 5,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
       gradient: LinearGradient(
        colors: [Colors.blue, Colors.red, Colors.green, Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: ListTile(
      leading: Icon(Icons.help_center_sharp, color: Colors.white),
      title: Text('How To Use?', style: TextStyle(color: Colors.white)),
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => Introduction()));
      },
    ),
  ),
),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Reach us',style: TextStyle(color: Colors.black54),)),
              ),
                 Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0), 
  ),
  elevation: 5,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
       gradient: LinearGradient(
        colors: [Colors.blue, Colors.red, Colors.green, Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: ListTile(
      leading: Icon(Icons.mail, color: Colors.white),
      title: Text('Contact Us', style: TextStyle(color: Colors.white)),
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
      },
    ),
  ),
),

               Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  elevation: 5,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.red, Colors.green, Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: ListTile(
      leading: Icon(Icons.code, color: Colors.white),
      title: Text('Developer', style: TextStyle(color: Colors.white)),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CWayDeveloper()));
      },
    ),
  ),
),

               Gap(10),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Legal',style: TextStyle(color: Colors.black54),)),
              ),
               Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  elevation: 5,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
       gradient: LinearGradient(
        colors: [Colors.blue, Colors.red, Colors.green, Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
                child: ListTile(
                  leading: Icon(Icons.privacy_tip,color: Colors.white,),
                  title: Text('Privacy Policy',style: TextStyle(color: Colors.white),),
                  onTap: () {   
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicy()));   
                  },
                ),
  ),
              ),
                    Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  elevation: 5,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0), 
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.red, Colors.green, Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: ListTile(
      leading: Icon(Icons.book, color: Colors.white),
      title: Text('Terms of Service', style: TextStyle(color: Colors.white)),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => TermsOfService()));
      },
    ),
  ),
),

               Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  elevation: 5,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
       gradient: LinearGradient(
        colors: [Colors.blue, Colors.red, Colors.green, Colors.yellow],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
                child: ListTile(
                  leading: Icon(Icons.cookie,color: Colors.white,),
                  title: Text('Cookie Policy',style: TextStyle(color: Colors.white)),
                  onTap: () {    
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CookiePolicyScreen()));  
                  },
                ),
  ),
              ),
              
      
            ],
          ),
        ],
      ),


    );
  }
}