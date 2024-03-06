import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mayurance/main.dart';
import 'package:mayurance/pages/mobile/mobile_contact_me.dart';
import 'package:mayurance/pages/mobile/mobile_education.dart';
import 'package:mayurance/pages/mobile/mobile_experience.dart';
import 'package:mayurance/pages/mobile/mobile_projects.dart';
import 'package:mayurance/pages/splash_screen.dart';
import 'package:mayurance/utils/const.dart';
import 'package:mayurance/utils/functions.dart';
import 'package:provider/provider.dart';
import 'package:show_up_animation/show_up_animation.dart';

class MobileHomePageContent extends StatefulWidget {
  const MobileHomePageContent({super.key});

  @override
  State<MobileHomePageContent> createState() => _MobileHomePageContentState();
}

class _MobileHomePageContentState extends State<MobileHomePageContent> {
  @override
  Widget build(BuildContext context) {
    final contentNotifier = Provider.of<ContentNotifier>(context);

    return Scaffold(
        appBar: AppBar(
          actions: [
            Text(
              "<SahilChudasama/>",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: PortFolioColors.textColor,
                fontFamily: 'Agustina',
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: PortFolioColors.textColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                            height: 65,
                            width: 65,
                            child: Image.asset('assets/profile.jpg'))),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sahil Chudasama',
                      style: TextStyle(
                          color: PortFolioColors.colorOnPrimary, fontSize: 20),
                    ),
                    Text(
                      'Application Developer',
                      style: TextStyle(
                          color:
                              PortFolioColors.colorOnPrimary.withOpacity(.85),
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  contentNotifier.changeContent('Home');
                },
              ),
              ListTile(
                title: const Text(
                  'Education',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                  contentNotifier.changeContent('Education');
                },
              ),
              ListTile(
                title: const Text(
                  'Projects',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                  contentNotifier.changeContent('Projects');
                },
              ),
              ListTile(
                title: const Text(
                  'Experience',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                  contentNotifier.changeContent('Experience');
                },
              ),
              ListTile(
                // leading: Icon(Icons.contact_mail),
                title: const Text(
                  'Contact Me',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                  contentNotifier.changeContent('Contact Me');
                },
              ),
            ],
          ),
        ),
        body: ValueListenableBuilder<String>(
            valueListenable: contentNotifier,
            builder: (context, content, _) {
              log("Content: $content");
              return SingleChildScrollView(
                child: content == 'Home'
                    ? const PortfolioHomeMobile()
                    : content == 'Education'
                        ? const EducationMobile()
                        : content == 'Contact Me'
                            ? const ContactMeMobile()
                            : content == 'Projects'
                                ? const ProjectsMobile()
                                : content == 'Experience'
                                    ? const ExperienceMobile()
                                    : const Center(
                                        child: Text(
                                            'Welcome to PortFolio Website')),
              );
            }));
  }
}

class PortfolioHomeMobile extends StatefulWidget {
  const PortfolioHomeMobile({super.key});

  @override
  State<PortfolioHomeMobile> createState() => _PortfolioHomeMobileState();
}

class _PortfolioHomeMobileState extends State<PortfolioHomeMobile> {
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
          ShowUpAnimation(
            animationDuration: const Duration(milliseconds: 600),
            curve: Curves.easeIn,
            direction: Direction.horizontal,
            offset: -0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                    child: ShowUpAnimation(
                      animationDuration: const Duration(milliseconds: 600),
                      curve: Curves.easeIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Image.asset('assets/home.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    'Sahil \nChudasama',
                    style: TextStyle(
                      color: PortFolioColors.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.045,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Application Developer",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.030,
                      color: PortFolioColors.textColor,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Dedicated app artisan, proficient in architecting and delivering powerful end-to-end solutions. Adept at constructing sustainable, extensible applications. Crafting user-centric masterpieces with a profound, positive influence.",
                    style: TextStyle(
                        height: 1.7,
                        wordSpacing: 0.5,
                        fontSize: MediaQuery.sizeOf(context).height * 0.025,
                        color: PortFolioColors.colorOnSecondary,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: GestureDetector(
                    onTap: () {
                      launchURL(
                          "https://drive.google.com/file/d/1wkl8679I28jJgeDN-ai3V92mPmC8prYP/view?usp=sharing");
                    },
                    child: Card(
                      color: PortFolioColors.textColor,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'See My Resume',
                          style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         'What I Do?',
          //         style: TextStyle(
          //           color: PortFolioColors.textColor,
          //           fontWeight: FontWeight.bold,
          //           fontSize: MediaQuery.of(context).size.height * 0.06,
          //         ),
          //         textAlign: TextAlign.center,
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.5,
          //   child: const Row(
          //     children: [
          //       Expanded(
          //         child: Center(
          //           child: Text(
          //             "Home",
          //             style: TextStyle(fontSize: 16),
          //           ),
          //         ),
          //       ),
          //       Expanded(
          //         child: Center(
          //           child: Text(
          //             "Home",
          //             style: TextStyle(fontSize: 16),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
