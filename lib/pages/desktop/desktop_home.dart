import 'package:flutter/material.dart';
import 'package:mayurance/custom_widgets/custom_navigation_bar.dart';
import 'package:mayurance/custom_widgets/custom_row.dart';
import 'package:mayurance/main.dart';
import 'package:provider/provider.dart';
import 'package:show_up_animation/show_up_animation.dart';
import '../../utils/const.dart';
import '../../utils/functions.dart';

class DesktopHomePageContent extends StatelessWidget {
  const DesktopHomePageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contentNotifier = Provider.of<ContentNotifier>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        const CustomNavigationBar(),
        Expanded(
          child: ValueListenableBuilder<String>(
            valueListenable: contentNotifier,
            builder: (context, content, _) {
              return CustomRow(
                titleText: content,
              );
            },
          ),
        ),
        // const Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Text('Made with ❤️ by Sahil Chudasama'),
        //   ],
        // )
        // ❤️
      ],
    );
  }
}

class PortFolioHomeDesktop extends StatelessWidget {
  const PortFolioHomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(18.0),
              child: ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 600),
                curve: Curves.easeIn,
                direction: Direction.horizontal,
                offset: -0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text('Sahil Chudasama',
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.08),
                          textAlign: TextAlign.left),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "Application Developer",
                        style: TextStyle(
                            fontSize: MediaQuery.sizeOf(context).height * 0.04,
                            color: PortFolioColors.textColor,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "Dedicated app artisan, proficient in architecting and delivering powerful end-to-end solutions. Adept at constructing sustainable, extensible applications. Crafting user-centric masterpieces with a profound, positive influence.", // Add your desired content here
                        style: TextStyle(
                            height: 1.7,
                            wordSpacing: 0.5,
                            fontSize: MediaQuery.sizeOf(context).height * 0.03,
                            color: PortFolioColors.colorOnSecondary,
                            fontWeight: FontWeight.w400),

                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Row(
                      children: [],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
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
                                      color: PortFolioColors.colorOnPrimary),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                    child: Image.asset('assets/home.png'))),
          ),
        ]),
        // SizedBox(height: MediaQuery.sizeOf(context).height * 0.3),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text('What I Do?',
        //         style: TextStyle(
        //             color: PortFolioColors.textColor,
        //             fontWeight: FontWeight.bold,
        //             fontSize: MediaQuery.sizeOf(context).height * 0.06),
        //         textAlign: TextAlign.center),
        //   ],
        // ),
        // SizedBox(
        //     height: MediaQuery.sizeOf(context).height * 0.5,
        //     child: const Row(
        //       children: [
        //         Expanded(
        //           flex: 5,
        //           child: Center(
        //             child: Text(
        //               "Home", // Add your desired content here
        //               style: TextStyle(fontSize: 16),
        //             ),
        //           ),
        //         ),
        //         Expanded(
        //           flex: 5,
        //           child: Center(
        //             child: Text(
        //               "Home", // Add your desired content here
        //               style: TextStyle(fontSize: 16),
        //             ),
        //           ),
        //         ),
        //       ],
        //     )),
      ],
    );
  }
}
