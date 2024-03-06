import 'package:flutter/material.dart';
import 'package:mayurance/utils/const.dart';
import 'package:mayurance/utils/functions.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ContactMe extends StatelessWidget {
  final String titleText;
  const ContactMe({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
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
                        fontSize: MediaQuery.sizeOf(context).height * 0.06),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Feel free to contact me through any of my social media platforms, and I'll be sure to respond within 24 hours. As an accomplished application developer, I specialize in creating cutting-edge solutions using Flutter, Android, and open-source development. Let's collaborate and bring your ideas to life!", // Add your desired content here
                      style: TextStyle(
                          height: 1.7,
                          wordSpacing: 0.5,
                          fontSize: MediaQuery.sizeOf(context).height * 0.03,
                          color: PortFolioColors.colorOnSecondary,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
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
                  ),
                  const SizedBox(height: 20),
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
                    child: Image.asset('assets/contact_person.png')))),
      ],
    );
  }
}
