import 'package:flutter/material.dart';
import 'package:mayurance/custom_widgets/custom_education.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/const.dart';

class EducationDesktop extends StatefulWidget {
  final String titleText;
  const EducationDesktop({super.key, required this.titleText});

  @override
  State<EducationDesktop> createState() => _EducationDesktopState();
}

class _EducationDesktopState extends State<EducationDesktop> {
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
                  child: Center(
                      child: ShowUpAnimation(
                          animationDuration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn,
                          direction: Direction.horizontal,
                          offset: -0.5,
                          child: Image.asset('assets/education.png')))),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.titleText,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.07),
                        ),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.02),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "Bachelor of Engineering in Computer Engineering", // Add your desired content here
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.sizeOf(context).height * 0.03,
                                color: PortFolioColors.colorOnSecondary,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            "(CGPA: 08.41 )\n",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.sizeOf(context).height * 0.025,
                                color: PortFolioColors.colorOnSecondary,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            "Throughout my enriching journey in Computer Engineering, I've focused on practical learning, developing expertise in programming, web, and mobile app development. Moreover, I've cultivated strong public speaking skills, enabling effective project discussions and collaborations.", // Add your desired content here
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Colleges/ Universities',
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
        ShowUpAnimation(
          animationDuration: const Duration(milliseconds: 600),
          curve: Curves.easeIn,
          direction: Direction.horizontal,
          offset: -0.5,
          child: const CustomEducation(
            imageAddress: "assets/gp_logo.png",
            collegeName: "Silver Oak College of Engineering and Technology",
            collegeDegree: "B.Tech. in Computer Engineering",
            collegePassingYear: "2017-2020",
            collegeResult: "CGPA : ",
            learning1: "Hands-on Innovation:",
            learning1InDetail:
                "Demonstrate practical expertise through participation in Hackathon and real-world projects, showcasing my IT skills, teamwork, and impactful outcomes.",
            learning2: "Inquisitive Mindset:",
            learning2InDetail:
                "Highlight my curious and inquisitive approach to exploring new technologies and concepts,driving continuous growth and innovation in the field of Information Technology.",
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        ShowUpAnimation(
          animationDuration: const Duration(milliseconds: 600),
          curve: Curves.easeIn,
          direction: Direction.horizontal,
          offset: 0.5,
          child: const CustomEducation(
            imageAddress: "assets/socet_logo.png",
            collegeName: "Government Polytechnic Ahmedabad",
            collegeDegree: "Diploma in Information & Technology",
            collegePassingYear: "2020-2023",
            collegeResult: "CGPA : ",
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
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text('Certification',
        //         style: TextStyle(
        //             color: PortFolioColors.textColor,
        //             fontWeight: FontWeight.bold,
        //             fontSize: MediaQuery.sizeOf(context).height * 0.06),
        //         textAlign: TextAlign.center),
        //   ],
        // ),
      ],
    );
  }
}
