import 'package:flutter/material.dart';
import 'package:mayurance/custom_widgets/custom_project_task.dart';
import 'package:mayurance/model/project_details.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/const.dart';

class ProjectDesktop extends StatelessWidget {
  final String titleText;
  const ProjectDesktop({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    List<ProjectDetails> projectDetailsList = [
      ProjectDetails(
        projectImageAddress: "assets/vyaya_logo.png",
        projectName: 'Vyaya',
        projectTagline: 'Manage your Expenses',
        projectDescription:
            'Effortlessly manage income & expenses. Weekly/monthly/yearly analysis. Set category-wise limits: Needs, Wants, Savings. Available on PlayStore. Try it now!',
      ),
      ProjectDetails(
        projectImageAddress: "assets/speedometer_logo.png",
        projectName: 'Speed Detector',
        projectTagline: "Track, Detect, Measure",
        projectDescription:
            'Accomplished real-time Object Speed Detector app for tracking and analyzing object motion with precision. Stay updated with the latest version!',
      ),
      ProjectDetails(
        projectImageAddress: "assets/service_baba_logo.png",
        projectName: 'Service Baba',
        projectTagline: "Book Service with Ease!",
        projectDescription:
            'Service Baba is a platform where service providers present their work & normal users can book their services by checking their work. Book your first service now!',
      ),
      ProjectDetails(
        projectImageAddress: "assets/cpis_logo.png",
        projectName: 'CPIS',
        projectTagline: "Solving Citizens Problems",
        projectDescription:
            'CPIS (Citizen Problem Identification and System), with the help of this, citizens can register complaints to the corporation. Let your voice be heard!',
      ),
      ProjectDetails(
        projectImageAddress: "assets/mentormate_logo.jpg",
        projectName: 'MentorMate',
        projectTagline: "Expert Learning, Simplified",
        projectDescription:
            'It is a mobile Application where student can directly connect to Expert & learn the topics in Details. Start your learning journey today! Unlock your potential with personalized guidance from industry experts!',
      ),
      ProjectDetails(
          projectImageAddress: "assets/eatup_logo.png",
          projectName: 'EatUP',
          projectTagline: "Plan your Meal with us",
          projectDescription:
              'Plan your Daily Meal with Our Suggestions according to food Material you have and Get Reminder Before Cooking Time. Never miss a meal again! Eat healthier and tastier meals effortlessly with EatUP!'),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                    child: ShowUpAnimation(
                        animationDuration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn,
                        direction: Direction.horizontal,
                        offset: -0.5,
                        child: Image.asset('assets/projects.png'))),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: ShowUpAnimation(
                    animationDuration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                    direction: Direction.horizontal,
                    offset: 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          titleText,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.06),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            "My passion lies in creating innovative and impactful projects that leverage the latest technology tools. One of my proudest achievements is a live application available on the Play Store, showcasing my dedication to delivering seamless user experiences. With expertise in Flutter, I craft engaging mobile apps that leave a lasting impression. Welcome to my portfolio, and let's explore the possibilities of working together!", // Add your desired content here
                            overflow: TextOverflow.clip,
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
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          // height: MediaQuery.sizeOf(context).height * 0.30,
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2.0,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: projectDetailsList.length,
              itemBuilder: (context, index) {
                return CustomProjectTask(
                  projectImagePath:
                      projectDetailsList[index].projectImageAddress,
                  projectName: projectDetailsList[index].projectName,
                  projectDescription:
                      projectDetailsList[index].projectDescription,
                  projectTagline: projectDetailsList[index].projectTagline,
                );
              }),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.025,
        ),
      ],
    );
  }
}
