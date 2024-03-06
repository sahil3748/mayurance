import 'package:flutter/material.dart';
import 'package:mayurance/utils/const.dart';
import 'package:mayurance/utils/functions.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ContactMeMobile extends StatefulWidget {
  const ContactMeMobile({super.key});

  @override
  State<ContactMeMobile> createState() => _ContactMeMobileState();
}

class _ContactMeMobileState extends State<ContactMeMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
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
      child: Column(
        children: [
          ShowUpAnimation(
              animationDuration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
              direction: Direction.horizontal,
              offset: -0.5,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset('assets/contact_person.png'))),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ShowUpAnimation(
              animationDuration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
              direction: Direction.horizontal,
              offset: 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Feel free to contact me through any of my social media platforms, and I'll be sure to respond within 24 hours. As an accomplished application developer, I specialize in creating cutting-edge solutions using Flutter, Android, and open-source development. Let's collaborate and bring your ideas to life!", // Add your desired content here
                      style: TextStyle(
                          height: 1.7,
                          fontSize: MediaQuery.sizeOf(context).height * 0.025,
                          color: PortFolioColors.colorOnSecondary,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          launchURL(
                              'https://www.linkedin.com/in/sahil-chudasama');
                        },
                        child: Card(
                          color: PortFolioColors.colorWhite,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/linkedin.png',
                                  height:
                                      MediaQuery.sizeOf(context).height * .05,
                                  width:
                                      MediaQuery.sizeOf(context).height * .05,
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          launchURL("https://github.com/sahil3748");
                        },
                        child: Card(
                          color: PortFolioColors.colorWhite,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/github.png',
                                  height:
                                      MediaQuery.sizeOf(context).height * .05,
                                  width:
                                      MediaQuery.sizeOf(context).height * .05,
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          launchURL(
                              'mailto:sahilchudasama471@gmail.com?subject=${Uri.encodeFull('')}&body=${Uri.encodeFull('')}');
                        },
                        child: Card(
                          color: PortFolioColors.colorWhite,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/gmail.png',
                                  height:
                                      MediaQuery.sizeOf(context).height * .05,
                                  width:
                                      MediaQuery.sizeOf(context).height * .05,
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      // InkWell(

                      //   onTap: () {
                      //     launchURL('');
                      //   },
                      //   child: Card(
                      //     color: PortFolioColors.colorWhite,
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(50)),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(5.0),
                      //       child: ClipRRect(
                      //           borderRadius: BorderRadius.circular(50),
                      //           child: Image.asset(
                      //             'assets/whatsapp.png',
                      //             height:
                      //                 MediaQuery.sizeOf(context).height * .05,
                      //             width:
                      //                 MediaQuery.sizeOf(context).height * .05,
                      //           )),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   width: 15,
                      // ),
                      // InkWell(
                      //   onTap: () async {
                      //     launchURL('');
                      //   },
                      //   child: Card(
                      //     color: PortFolioColors.colorWhite,
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(50)),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(5.0),
                      //       child: ClipRRect(
                      //           borderRadius: BorderRadius.circular(50),
                      //           child: Image.asset(
                      //             'assets/instagram.png',
                      //             height:
                      //                 MediaQuery.sizeOf(context).height * .05,
                      //             width:
                      //                 MediaQuery.sizeOf(context).height * .05,
                      //           )),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   width: 15,
                      // ),
                      // InkWell(
                      //   onTap: () {
                      //     launchURL('');
                      //   },
                      //   child: Card(
                      //     color: PortFolioColors.colorWhite,
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(50)),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(5.0),
                      //       child: ClipRRect(
                      //           borderRadius: BorderRadius.circular(50),
                      //           child: Image.asset(
                      //             'assets/facebook.png',
                      //             height:
                      //                 MediaQuery.sizeOf(context).height * .05,
                      //             width:
                      //                 MediaQuery.sizeOf(context).height * .05,
                      //           )),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   width: 15,
                      // ),
                    ],
                  ),
                  // const Row(
                  //   children: [],
                  // ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () {
                  //         launchURL(
                  //             "https://drive.google.com/file/d/1wkl8679I28jJgeDN-ai3V92mPmC8prYP/view?usp=sharing");
                  //       },
                  //       child: Card(
                  //         color: PortFolioColors.textColor,
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(15.0),
                  //           child: Text(
                  //             'See My Resume',
                  //             style: TextStyle(
                  //                 color: PortFolioColors.colorOnPrimary),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
