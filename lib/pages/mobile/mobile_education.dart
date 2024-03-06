import 'package:flutter/material.dart';
import 'package:mayurance/custom_widgets/custom_education.dart';
import 'package:mayurance/utils/const.dart';
import 'package:show_up_animation/show_up_animation.dart';

class EducationMobile extends StatefulWidget {
  const EducationMobile({super.key});

  @override
  State<EducationMobile> createState() => _EducationMobileState();
}

class _EducationMobileState extends State<EducationMobile> {
  @override
  Widget build(BuildContext context) {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                    child: ShowUpAnimation(
                      animationDuration: const Duration(milliseconds: 600),
                      curve: Curves.easeIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Image.asset('assets/education.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  "Bachelor of Engineering in Computer Engineering",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "(CGPA: 08.41 )",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Throughout my enriching journey in Computer Engineering, I've focused on practical learning, developing expertise in programming, web, and mobile app development. Moreover, I've cultivated strong public speaking skills, enabling effective project discussions and collaborations.",
                    style: TextStyle(
                      height: 1.7,
                      wordSpacing: .5,
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Colleges/ Universities',
                style: TextStyle(
                  color: PortFolioColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ShowUpAnimation(
            animationDuration: const Duration(milliseconds: 600),
            curve: Curves.easeIn,
            direction: Direction.horizontal,
            offset: -0.5,
            child: const CustomEducationMobile(
              imageAddress: "assets/socet_logo.png",
              collegeName: "Silver Oak College of Engineering and Technology",
              collegeDegree: "B.Tech. in Computer Engineering",
              collegePassingYear: "2020-2023",
              collegeResult: "CGPA : 08.41",
              learning1: "Mobile Application Development:",
              learning1InDetail:
                  "Highlight my experience in designing and developing mobile applications for various platforms,showcasing my skills in creating user-friendly interfaces, implementing functionalities,and optimizing performance to deliver engaging mobile experiences.",
              learning2: "Public Speaking Proficiency:",
              learning2InDetail:
                  "Illustrate my ability to communicate effectively and confidently through public speaking,showcasing my skills in presenting technical information, discussing ideas, and engaging with diverse audiences, a valuable soft skill in the field of Computer Engineering.",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ShowUpAnimation(
            animationDuration: const Duration(milliseconds: 600),
            curve: Curves.easeIn,
            direction: Direction.horizontal,
            offset: 0.5,
            child: const CustomEducationMobile(
              imageAddress: "assets/gp_logo.png",
              collegeName: "Government Polytechnic Ahmedabad",
              collegeDegree: "Diploma in Information & Technology",
              collegePassingYear: "2017-2020",
              collegeResult: "CGPA : 08.86",
              learning1: "Hands-on Innovation:",
              learning1InDetail:
                  "Demonstrate practical expertise through participation in Hackathon and real-world projects, showcasing my IT skills, teamwork, and impactful outcomes.",
              learning2: "Inquisitive Mindset:",
              learning2InDetail:
                  "Highlight my curious and inquisitive approach to exploring new technologies and concepts,driving continuous growth and innovation in the field of Information Technology.",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         'Certification',
          //         style: TextStyle(
          //           color: PortFolioColors.textColor,
          //           fontWeight: FontWeight.bold,
          //           fontSize: MediaQuery.of(context).size.height * 0.045,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
