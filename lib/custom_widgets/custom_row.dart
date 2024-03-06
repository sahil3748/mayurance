import 'package:flutter/material.dart';

import '../pages/desktop/desktop_contact_me.dart';
import '../pages/desktop/desktop_education.dart';
import '../pages/desktop/desktop_experience.dart';
import '../pages/desktop/desktop_home.dart';
import '../pages/desktop/desktop_projects.dart';

class CustomRow extends StatelessWidget {
  final String titleText;
  const CustomRow({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: titleText == 'Home'
            ? const PortFolioHomeDesktop()
            : titleText == 'Education'
                ? EducationDesktop(titleText: titleText)
                : titleText == 'Contact Me'
                    ? ContactMe(titleText: titleText)
                    : titleText == 'Projects'
                        ? ProjectDesktop(titleText: titleText)
                        : titleText == 'Experience'
                            ? ExperienceDesktop(
                                titleText: titleText,
                              )
                            : const Center(
                                child: Text('Welcome to PortFolio Website')),
      ),
    );
  }
}
