import 'package:flutter/material.dart';
import 'package:mayurance/custom_widgets/custom_experience.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/const.dart';

class ExperienceDesktop extends StatelessWidget {
  final String titleText;
  const ExperienceDesktop({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: ShowUpAnimation(
                    animationDuration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                    direction: Direction.horizontal,
                    offset: -0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          titleText,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.06),
                        ),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.05),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "With a year of Flutter development experience, I excel in state management using GetX and Provider. Proficient in Firebase for real-time databases and authentication, I leverage SQLite, Hive, and Google Drive API for efficient data management. Skilled in ML Kit and TensorFlow Lite for machine learning tasks, I prioritize user data security with robust encryption.",
                            style: TextStyle(
                                height: 1.7,
                                wordSpacing: 0.5,
                                fontSize:
                                    MediaQuery.sizeOf(context).height * 0.03,
                                color: PortFolioColors.colorOnSecondary,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Center(
                      child: ShowUpAnimation(
                          animationDuration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn,
                          direction: Direction.horizontal,
                          offset: 0.5,
                          child: Image.asset('assets/experience.png')))),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Internship / Job',
                style: TextStyle(
                    color: PortFolioColors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.sizeOf(context).height * 0.06),
                textAlign: TextAlign.center),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomExperience(
          companyImageAddress: 'assets/wappnet.png',
          companyName: 'Wappnet Systems Pvt. Ltd.',
          companyPosition: 'Flutter Developer',
          companyDuration: 'Jan 2023 - Present',
          companyLocation: 'Ahmedabad',
          learning1: "Efficient State Handling :",
          learning1InDetail:
              "Mastered Flutter state management techniques (e.g., Provider, GetX) for responsive, scalable apps, optimizing performance and codebase organization.",
          learning2: "API Data Integration :",
          learning2InDetail:
              "Proficient in integrating and handling data from external APIs like Inshorts, ensuring seamless data retrieval, error handling, and real-time updates for enhanced user experience.",
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomExperience(
          companyImageAddress: 'assets/infolabz.png',
          companyName: 'InfoLabz IT Services',
          companyPosition: 'Flutter Trainee',
          companyDuration: 'Jun 2022 - Jul 2022',
          companyLocation: 'Ahmedabad',
          learning1: "Cross-Platform Mastery : ",
          learning1InDetail:
              "Proficiency in Flutter enables seamless app deployment across Android and iOS, streamlining development efforts and maximizing audience reach.",
          learning2: "API Integration Expertise : ",
          learning2InDetail:
              "Skills acquired in integrating external APIs such as Inshorts API enhance app functionality, offering real-time data access and dynamic content.",
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomExperience(
          companyImageAddress: 'assets/infolabz.png',
          companyName: 'InfoLabz IT Services',
          companyPosition: 'Android Trainee',
          companyDuration: 'Oct 2019 - Sep 2020',
          companyLocation: 'Ahmedabad',
          learning1: "Understanding of Full-Stack Development: ",
          learning1InDetail:
              "I've gained full-stack skills in Java, Android SDK, APIs, databases, and Firebase, enabling end-to-end app development.",
          learning2: "Adaptability and Continuous Learning: ",
          learning2InDetail:
              "Dynamic Android ecosystem: Constant updates & evolving practices necessitate adaptability & continuous learning, crucial for tech careers.",
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
