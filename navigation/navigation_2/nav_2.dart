import 'package:flutter/material.dart';

void main() {
  runApp(CourseApp());
}

class CourseApp extends StatefulWidget {
  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;

  List<Course> courses = [
    Course(
      code: "SiTE-001",
      title: "Introduction To Programming",
      description: "Computer Organization, Architecture, Programming",
    ),
    Course(
      code: "SiTE-002",
      title: "Data Structures and Algorithms",
      description: "Fundamental data structures and algorithms",
    ),
    Course(
      code: "SiTE-003",
      title: "Web Development",
      description: "Building web applications using HTML, CSS, and JavaScript",
    ),
    // Add more courses as needed
  ];

  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: CoursesListScreen(
              courses: courses,
              onTapped: _tabHandler,
            ),
          ),
          if (_selectedCourse != null)
            MaterialPage(
              key: ValueKey(_selectedCourse),
              child: CourseDetailsScreen(course: _selectedCourse!),
            ),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedCourse = null;
          });
          return true;
        },
      ),
    );
  }
}

class CoursesListScreen extends StatelessWidget {
  final List<Course> courses;
  final Function(Course) onTapped;

  CoursesListScreen({required this.courses, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course List'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            title: Text(course.title),
            subtitle: Text(course.description),
            onTap: () => onTapped(course),
          );
        },
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
      ),
      body: Column(
        children: [
          Text('Code: ${course.code}'),
          Text('Title: ${course.title}'),
          Text('Description: ${course.description}'),
        ],
      ),
    );
  }
}

class Course {
  final String code;
  final String title;
  final String description;

  Course({required this.code, required this.title, required this.description});
}
