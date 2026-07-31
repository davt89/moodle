import 'package:flutter/material.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/constants.dart';

class CoursePageView extends StatelessWidget {
  const CoursePageView({Key? key}) : super(key: key);

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
        child: const SingleChildScrollView(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Programming Applications and Programming Languages (2025/26)',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: Card(
                  color: moodleWhite,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: moodleBorder),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'General Information',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: moodleTextDark),
                        ),
                        SizedBox(height: 24),

                        Row(children: [
                          Icon(Icons.chat, color: Color.fromARGB(255, 0, 17, 255)),
                          SizedBox(width: 8),
                          Text('Announcements', style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 17, 255))),
                        ]),
                        SizedBox(height: 24),
                        
                        Text(
                          'Assessments & Support Materials',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: moodleTextDark),
                        ),
                        SizedBox(height: 24),

                        Row(children: [
                          Icon(Icons.list, color: Color.fromARGB(255, 255, 0, 0)),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text('Ref/Def - Item 2 M30235 - Computer Based Exam (30 July 2026, 10:00 AM)', style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 17, 255))),
                          ),
                        ]),
                        SizedBox(height: 24),

                        Text(
                          'Item 1 - Referral and Deferral (Flutter Coursework) (CW) (Initial Due Date: 29.07.2026 13:00pm)',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: moodleTextDark),
                        ),
                        SizedBox(height: 16),

                        Text('The coursework brief can be accessed via this link: Flutter Referral and Deferral Coursework.docx'),
                        SizedBox(height: 16),

                        Text('Paste the link to the GitHub repository for your coursework in the provided text field of the submission page and click on Save changes. You are not submitting any files for this coursework. You should have forked this repository and built upon it as instructed in the brief. This way, the submitted link should be of this format (where YOUR-USERNAME is replaced with your GitHub username):'),
                        SizedBox(height: 16),

                        Text('https://github.com/YOUR-USERNAME/moodle'),
                        SizedBox(height: 16),

                        Text('Make sure the repository is public. Check to see if it opens in an incognito/private window (you should not get a 404 error).'),
                        SizedBox(height: 16),

                        Text('⚠️ Do not make any commits after the deadline. I will label your submission as late if you do this.'),
                        SizedBox(height: 16),

                        Text('Item 1 (Flutter) - Referral and Deferral Coursework Brief', style: TextStyle(color: Color.fromARGB(255, 0, 17, 255))),
                        SizedBox(height: 16),

                        Text('Item 1 (Flutter) - Referral and Deferral Coursework. Deadline: 29/07/2026 13:00pm (with the 48 hour extension: 31/07/2026 13:00pm)', style: TextStyle(color: Color.fromARGB(255, 0, 17, 255))),
                      ],
                    ),
                  ),
                ),
              ),
            ]
          )
        )
      )

    );
  }
}