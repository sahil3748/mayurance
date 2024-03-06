import 'package:flutter/material.dart';
import 'package:mayurance/pages/splash_screen.dart';
import 'package:provider/provider.dart';
import '../utils/const.dart';
import 'custom_nav_button.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final contentNotifier = Provider.of<ContentNotifier>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "<",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: PortFolioColors.textColor,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      " SahilChudasama ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: PortFolioColors.textColor,
                        fontFamily: 'Agustina',
                      ),
                    ),
                    Text(
                      "/>",
                      style: TextStyle(
                        color: PortFolioColors.textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              NavButton(
                textSize: 0.012,
                title: 'Home',
                onTap: () {
                  contentNotifier.changeContent('Home');
                },
                isSelected: contentNotifier.value == 'Home',
              ),
              NavButton(
                textSize: 0.012,
                title: 'Education',
                onTap: () {
                  contentNotifier.changeContent('Education');
                },
                isSelected: contentNotifier.value == 'Education',
              ),
              NavButton(
                textSize: 0.012,
                title: 'Experience',
                onTap: () {
                  contentNotifier.changeContent('Experience');
                },
                isSelected: contentNotifier.value == 'Experience',
              ),
              NavButton(
                textSize: 0.012,
                title: 'Projects',
                onTap: () {
                  contentNotifier.changeContent('Projects');
                },
                isSelected: contentNotifier.value == 'Projects',
              ),
              NavButton(
                textSize: 0.012,
                title: 'Contact Me',
                onTap: () {
                  // Navigator.pushNamed(context, '/contact');
                  contentNotifier.changeContent('Contact Me');
                },
                isSelected: contentNotifier.value == 'Contact Me',
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
