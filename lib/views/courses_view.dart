import 'package:flutter/material.dart';
import 'package:moodle/widgets/nav_drawer.dart';
import 'package:moodle/constants.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({Key? key}) : super(key: key);

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
                'My courses',
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
                'My courses',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: moodlePurple,
                ),
              ),
              SizedBox(height: 24),

              const Text(
                'Course overview',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: moodlePurple),
              ),

              DropdownMenu<String>(
                initialSelection: 'In progress',
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 'In progress', label: 'In progress'),
                    DropdownMenuEntry(value: 'Future', label: 'Future'),
                    DropdownMenuEntry(value: 'Past', label: 'Past'),
                  ],
                  onSelected: (String? value) {},
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(height: 12),

              Row(
                children: [
                  DropdownMenu<String>(
                    width: 210,
                    textStyle: TextStyle(fontSize: 14),
                    initialSelection: 'Sort by course name',
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: 'Sort by course name', label: 'Sort by course name'),
                      DropdownMenuEntry(value: 'Sort by short name', label: 'Sort by short name'),
                      DropdownMenuEntry(value: 'Sort by last accessed', label: 'Sort by last accessed'),
                    ],
                    onSelected: (String? value) {},
                  ),
                  DropdownMenu<String>(
                    width: 130,
                    textStyle: TextStyle(fontSize: 12),
                    initialSelection: 'Card',
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: 'Card', label: 'Card'),
                      DropdownMenuEntry(value: 'List', label: 'List'),
                      DropdownMenuEntry(value: 'Summary', label: 'Summary'),
                    ],
                    onSelected: (String? value) {},
                  ),
                ],
              ),
              SizedBox(height: 12),

              Card(
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 90,
                        color: const Color.fromARGB(255, 60, 81, 201),
                      ),
                      Text('M30235-2025/26-SMYEAR', style: TextStyle(color: moodleSecondary)),
                      Text('School of Computing', style: TextStyle(fontWeight: FontWeight.bold, color: moodleSecondary)),
                      Text('Programming Applications and Programming Languages (2025/26)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 17, 255))),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
