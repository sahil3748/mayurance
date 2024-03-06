import 'package:flutter/material.dart';
import 'package:mayurance/custom_widgets/custom_project_task.dart';
import 'package:mayurance/model/project_details.dart';
import 'package:mayurance/utils/const.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({super.key});

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
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

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            PortFolioColors.colorOnPrimary,
            PortFolioColors.colorPrimaryGradient,
            PortFolioColors.colorPrimary
          ],
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Center(
              child: ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 600),
                curve: Curves.easeIn,
                direction: Direction.horizontal,
                offset: -0.5,
                child: Image.asset('assets/projects.png'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  "My passion lies in creating innovative and impactful projects that leverage the latest technology tools. One of my proudest achievements is a live application available on the Play Store, showcasing my dedication to delivering seamless user experiences. With expertise in Flutter, I craft engaging mobile apps that leave a lasting impression. Welcome to my portfolio, and let's explore the possibilities of working together!",
                  style: TextStyle(
                    height: 1.7,
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.55,
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: projectDetailsList.length,
                itemBuilder: (context, index) {
                  return CustomProjectTaskMobile(
                    projectImagePath:
                        projectDetailsList[index].projectImageAddress,
                    projectName: projectDetailsList[index].projectName,
                    projectDescription:
                        projectDetailsList[index].projectDescription,
                    projectTagline: projectDetailsList[index].projectTagline,
                  );
                }),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
