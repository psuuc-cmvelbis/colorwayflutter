import 'package:colorway/datacolors/bio.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CWayDeveloper extends StatefulWidget {
  const CWayDeveloper({super.key});

  @override
  State<CWayDeveloper> createState() => _CWayDeveloperState();
}

class _CWayDeveloperState extends State<CWayDeveloper> {
 
 final viewbio = RAZO;
  bool showbio = false;


void viewbuttonz(){
setState(() {
 showbio = !showbio;
});
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Gap(20),
                Text('Meet The Developers',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Gap(20),
    Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Card(
        child: Column(
          children: [
            Image.asset(
              'assets/images/profile2.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10,),
            Text(
              'Christian Mark Velbis',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
      Card(
        child: Column(
          children: [
            Image.asset(
              'assets/images/profile.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10,)
,            Text(
              'Clarence Vince Razo',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    ],
  ),
)


              ],
            ),
          ),
          SizedBox(
              height: 20,
            ),
             Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(width: 10),
      ElevatedButton(
        onPressed: viewbuttonz,
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(Colors.amber.shade900),
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 20, 89, 193)),
        ),
        child: Text(
          showbio ? 'Hide Info' : '  Show Info  ',
          style: TextStyle(color: Color.fromARGB(255, 249, 244, 244)),
        ),
      ),
    ],
  ),
),

                        SizedBox(
              height: 9,
            ),
            Visibility(
              visible: showbio,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children:
                       RAZO.map((bioko) => Padding(
                        padding: const EdgeInsets.all(10.0),                  
                        child: Text('$bioko',style: TextStyle(color: const Color.fromARGB(255, 15, 15, 13)),),
                      )).toList(),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}