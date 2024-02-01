import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'By using this app, you agree to abide by the following terms and conditions:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '1. You must be at least 18 years old to use this app. If you are under 18, you must have parental or legal guardian consent.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '2. This app is intended for educational purposes only. You may not use it for any illegal or unauthorized activities.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '3. You are responsible for your actions on the app. Do not engage in any harmful or malicious behavior, including harassment, impersonation, or any other unethical conduct.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '4. We take your privacy seriously. Please review our Privacy Policy for information about how we collect, use, and protect your data.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '5. All content provided in the app, including text, images, and multimedia, is the property of the app owner. You may not use, modify, or distribute this content without permission.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '6. The app owner is not responsible for any damages, injuries, or losses incurred while using the app.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '7. These terms and conditions may be updated from time to time. It is your responsibility to review them periodically.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '8. We reserve the right to terminate or suspend your access to the app for any violation of these terms.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}