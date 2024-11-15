import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(child: Text('Privacy Policy',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
              SizedBox(height: 15,),

            Text(
              "Welcome to ColorWay, your go-to dynamic design tool. We appreciate your choice in empowering your creative journey with us. This Privacy Policy is a commitment to transparency, outlining how we handle, collect, use, and disclose your personal information as you engage with our application.",
            ),
            SizedBox(height: 20.0),
            Text(
              "1. Information We Collect",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "1.1 Personal Information: We collect voluntarily provided information, such as name and email, when you create an account or use certain features.",
            ),
            SizedBox(height: 10.0),
            Text(
              "1.2 User-Generated Content: The app collects and stores color palettes and associated information you create and share within ColorWay.",
            ),
            SizedBox(height: 10.0),
            Text(
              "1.3 Usage Data: Automatically collected information includes device details, IP address, and usage patterns.",
            ),
            SizedBox(height: 20.0),
            Text(
              "2. How We Use Your Information",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "2.1 We use information to provide and maintain the app, including user-generated color schemes and suggestion palettes.",
            ),
            SizedBox(height: 10.0),
            Text(
              "2.2 Information helps us understand user preferences, enhance the app experience, and improve functionality.",
            ),
            SizedBox(height: 10.0),
            Text(
              "2.3 We may use personal information to communicate with you about newsletters, marketing, and other relevant content.",
            ),
            SizedBox(height: 20.0),
            Text(
              "3. Data Sharing and Disclosure",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "ColorWay does not sell or trade personal information but may share it with third-party service providers for app operation and business purposes.",
            ),
            SizedBox(height: 20.0),
            Text(
              "4. Security",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "While we take precautions to protect personal information, no method of transmission over the internet is entirely secure.",
            ),
            SizedBox(height: 20.0),
            Text(
              "5. Your Choices",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "You may choose not to provide certain personal information, but this may limit your use of specific app features.",
            ),
            SizedBox(height: 20.0),
            Text(
              "6. Changes to This Privacy Policy",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "We may update the Privacy Policy, and changes will be posted on our Facebook Account.",
            ),
          ],
        ),
      ),
      ),
    );
  }
}