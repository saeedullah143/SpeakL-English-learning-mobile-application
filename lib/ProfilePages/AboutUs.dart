import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About the Developers',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              DeveloperInfo(
                name: 'Saeedullah',
                fatherName: 'Sher Rahim',
                department: 'Department of Computer Science',
                university: 'University of Peshawar',
              ),
              SizedBox(height: 16),
              DeveloperInfo(
                name: 'Yasir Ali',
                fatherName: 'Muhammad Ibrahim',
                department: 'Department of Computer Science',
                university: 'University of Peshawa',
              ),
              SizedBox(height: 16),
              DeveloperInfo(
                name: 'Syed Hassam Ul Haq',
                fatherName: 'Syed Ikram Ul Haq',
                department: 'Department of Compute Science',
                university: 'University of Peshawar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeveloperInfo extends StatelessWidget {
  final String name;
  final String fatherName;
  final String department;
  final String university;

  DeveloperInfo({
    required this.name,
    required this.fatherName,
    required this.department,
    required this.university,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text('Name: $name'),
        Text('Father\'s Name: $fatherName'),
        Text('$department'),
        Text('$university'),
      ],
    );
  }
}