import 'package:flutter/material.dart';
import '../utils/const.dart';

class CustomProjectTaskMobile extends StatelessWidget {
  final String projectImagePath;
  final String projectName;
  final String projectDescription;
  final String projectTagline;

  const CustomProjectTaskMobile(
      {super.key,
      required this.projectTagline,
      required this.projectName,
      required this.projectDescription,
      required this.projectImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: PortFolioColors.colorWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(18),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              color: PortFolioColors.textColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.10,
                    width: MediaQuery.sizeOf(context).height * 0.10,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: PortFolioColors.colorWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            projectImagePath,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        projectName,
                        style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Text(
                        projectTagline,
                        style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Description :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(projectDescription,
                    style: TextStyle(color: PortFolioColors.textColor),
                    textAlign: TextAlign.justify),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomProjectTask extends StatelessWidget {
  final String projectImagePath;
  final String projectName;
  final String projectDescription;
  final String projectTagline;

  const CustomProjectTask(
      {super.key,
      required this.projectName,
      required this.projectDescription,
      required this.projectImagePath,
      required this.projectTagline});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: PortFolioColors.colorWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              color: PortFolioColors.textColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.14,
                    width: MediaQuery.sizeOf(context).height * 0.14,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: PortFolioColors.colorWhite,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            projectImagePath,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        projectName,
                        style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      ),
                      Text(
                        projectTagline,
                        style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Description :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(projectDescription,
                    style: TextStyle(color: PortFolioColors.textColor),
                    textAlign: TextAlign.justify),
              ],
            ),
          )
        ],
      ),
    );
  }
}
