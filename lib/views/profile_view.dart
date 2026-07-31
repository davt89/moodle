import 'package:flutter/material.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: moodleWhite,
        foregroundColor: moodleTextDark,
        elevation: 1,
        titleSpacing: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: 32,
                height: 32,
                child: Image.asset(
                  'images/moodle_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          const CircleAvatar(
            radius: 18,
            backgroundColor: moodleGrayBg,
            foregroundColor: moodlePurple,
            child: Text(
              'DT',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      drawer: const NavDrawer(),
      
      body: Container(
        color: moodleBg,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              SizedBox(height: 50),

              Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: moodleGrayBg,
                    foregroundColor: moodlePurple,
                    child: Text(
                      'DT',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  SizedBox(width: 24),
                  Text(
                    'David Tran',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: moodleTextDark),
                  ),
                ]
              ),
              SizedBox(height: 24),

              const Text(
                'User details',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: moodlePurple),
              ),
              SizedBox(height: 12),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: moodlePurple,
                  foregroundColor: moodleWhite,
                ),
                onPressed: () {},
                child: Text('Edit profile'),
              ),
              SizedBox(height: 22),

              const Text(
                'Email address',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: moodleTextDark),
              ),

              const Text(
                'David.Tran1@myport.ac.uk (Hidden from everyone except users with appropriate permissions)',
              ),
              SizedBox(height: 12),

              const Text(
                'Timezone',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: moodleTextDark),
              ),
              const Text(
                'Europe/London',
              ),


            ],
          ),
        ),
      ),
    );
  }
}



