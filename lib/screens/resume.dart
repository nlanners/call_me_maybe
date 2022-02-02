import 'package:flutter/material.dart';
import 'package:call_me_maybe/styles.dart';

final jobs = [
  <String, String>{
    'title': 'Assistant Manager',
    'company': 'KFC/A&W',
    'dates': '2004-2010',
    'location': 'St. George, UT',
    'description': 'Cash management, customer service, food service, cleaning, inventory, employee training, employee management.'
  },
  <String, String>{
    'title': 'Substitute Trumpet Player',
    'company': 'Southwest Symphony',
    'dates': '2007-2019',
    'location': 'St. George, UT',
    'description': 'Substitute or extra trumpet musician for the Symphony. Called upon when regular performers are ill or otherwise unable to attend performances.'
  },
  <String, String>{
    'title': 'Student Conductor',
    'company': 'Dixie State University',
    'dates': 'Fall 2010',
    'location': 'St. George, UT',
    'description': 'Conducted the Fall Musical (a collaboration between the music and theatre departments). Conducted rehearsals with peers and professinal musicians and actors. Provided input on rehearsal techniques, blocking, and performance factors.'
  },
  <String, String>{
    'title': 'Student Teacher',
    'company': 'Washington County School District',
    'dates': '2011-2012',
    'location': 'St. George, UT',
    'description': 'Aided Mentor Teacher in instructional activities. Designed curriculum. Guided students to create and fulfill their learning goals.'
  },
  <String, String>{
    'title': 'Music Teacher',
    'company': 'Enterprise High School',
    'dates': '2012-2013',
    'location': 'Enterprise, UT',
    'description': 'Taught 6th-12th grade Band and Choir. Designed curriculum and activities to fulfill the State of Utah Educational Standards. Organized the UHSAA Region Large Ensemble Festival. Collaborated with colleagues to create deep educational experiences for students.'
  },
  <String, String>{
    'title': 'Music Teacher',
    'company': 'Pine View Middle School',
    'dates': '2013-present',
    'location': 'St. George, UT',
    'description': 'Taught 8th-9th grade Band and Choir. Designed curriculum and activities to fulfill the State of Utah Educational Standards. Collaborated with colleagues to create deep educational experiences for students. Served on the Community Council. Served as Student Council Advisor. Served on the Digital Tranformation Leadership Team.'
  }
];

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(padding(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: createResume(jobs, context)
      ),
    );
  }
}

Widget workEntry(Map entryInfo, BuildContext context) {
  final title = entryInfo['title'];
  final company = entryInfo['company'];
  final dates = entryInfo['dates'];
  final location = entryInfo['location'];
  final description = entryInfo['description'];


  return Padding(
    padding: EdgeInsets.symmetric(vertical: padding(context)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.titleText),
        Padding(
          padding: EdgeInsets.symmetric(vertical: textPadding(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(company, style: Styles.jobText),
              Text(dates, style: Styles.jobText),
              Text(location, style: Styles.jobText)
            ],
          ),
        ),
        Align(alignment: Alignment.centerLeft, child: Text(description, style: Styles.jobText,)),
      ],
    ),
  );
}

List<Widget> createResume(List jobs, BuildContext context) {
List<Widget> resume = [];

jobs.forEach( (job) {
  resume.add(workEntry(job, context));
});

  return resume;
}

double padding(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.025;
  
}

double textPadding(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.01;
  
}