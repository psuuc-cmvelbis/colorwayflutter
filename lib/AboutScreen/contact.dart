import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                Card(
  color: Colors.blue.shade200,
  shadowColor: Colors.deepOrange,
  child: Padding(
    padding: const EdgeInsets.all(30.0),
    child: Container(
          height: 250,
         
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/contactus.png'), 
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
    ),
  ),
),
                SizedBox(height: 16),
                
                Text(
                  'Contact Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
              
                
              ],
            ),
          ),
          Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                   Icon(Icons.location_history),
                    SizedBox(height: 8),
                    Text('Leet, Santa Barbara Pangasinan'),
                    Text('or'),
                    Text('David, Mangaldan Pangasinan'),
                    SizedBox(height: 30),
                    Icon(Icons.phone_android_sharp),
                    SizedBox(height: 10),
                    Text('09468035457 / 09507691178'),
                    SizedBox(height: 30,),
                    Icon(Icons.schedule_outlined),
                    SizedBox(height: 10),
                    Text('Monday - Friday'),
                    SizedBox(height: 10),
                    Text('8am - 5pm'),
                  ],
                ),
        ],
      ),
    );
  }
}
 