import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class JobsPage extends StatefulWidget {
  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Job> jobs = [
    Job(
      name: 'Computer Programmer',
      description:
      'Make programs to help reduce workloads for people or offices. Works in offices or can work from home.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/41.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Office Worker',
      description:
      'Has computer skills, written skills, and the ability to plan things. Works in an office.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/47.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Hairdresser',
      description:
      'Cuts and styles people\'s hair. Works in a hair salon but can be mobile.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/40.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Butcher',
      description: 'Have a shop, Selling and cutting meats.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/43.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Barber',
      description: 'Cuts men\'s hair and facial hair. Works in a barber shop.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/39.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Taxi Driver',
      description: 'Drives taxi. pick and drops passengers',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/23.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Artist',
      description: 'Make drawings',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/35.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Footballer',
      description: 'Plays football for vast amounts of money. Works for a football club.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/19.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Fire Fighter',
      description: 'Puts out fires in homes, factories, cars, and car accidents. Works from a fire station.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/4-1.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Builder',
      description: 'Make buildings like homes, schools etc',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/16.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Nurse',
      description: 'Looks after patients by giving medicine and dressing wounds. Works from a hospital.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/10.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Soldiers',
      description: 'Fights for country',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/13.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Doctor',
      description: 'Helps look after people\'s health. Works in a doctor\'s surgery or in a hospital.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/Untitled-design.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Police',
      description: 'Helps maintain peace and order. Works from a police station.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/3-1.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Farmer',
      description: 'Works in fields and Growing crops',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/12.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Accountant',
      description: 'Looks after the finances for businesses. Works in an office.',
      imageUrl:
      'https://example.com/accountant.jpg', // Replace with actual image URL
    ),
    Job(
      name: 'Teacher',
      description: 'Helps students learn various subjects. Works in school, college, or university.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/teacher.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Waiter',
      description: 'Serves people food and drink. Works in a restaurant or cafes.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/6.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Baker',
      description: 'Bakes cakes and bread to sell to the public or shops. Works in a bakery.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/29.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Vet',
      description: 'Looks after people\'s animals. Works from a veterinary surgery or vets.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/48.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Plumber',
      description: 'Looks after people\'s plumbing in the home or industry. Works from a van.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/45.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
    Job(
      name: 'Optician',
      description: 'Looks after people\'s eyes by testing them. Works in an optician\'s.',
      imageUrl:
      'https://cdn-0.games4esl.com/wp-content/uploads/49.jpg?ezimgfmt=rs:300x300/rscb223/ng:webp/ngcb222', // Replace with actual image URL
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jobs and Work'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return _buildJobCard(job);
        },
      ),
    );
  }

  Widget _buildJobCard(Job job) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              job.name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              job.description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Image.network(
              job.imageUrl,
              width: 120.0, // Adjust the width as needed
              height: 120.0, // Adjust the height as needed
            ),
            SizedBox(height: 16.0),
            IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => _speakJobName(job.name),
            ),
          ],
        ),
      ),
    );
  }
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
  void _speakJobName(String jobName) async {
    await flutterTts.setLanguage('en-US'); // Set the language (you can change this)
    await flutterTts.speak(jobName);
  }
}

class Job {
  final String name;
  final String description;
  final String imageUrl;

  Job({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
