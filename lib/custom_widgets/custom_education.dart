import 'package:flutter/material.dart';

import '../utils/const.dart';

class CustomEducationMobile extends StatelessWidget {
  final String imageAddress;
  final String collegeName;
  final String collegeDegree;
  final String collegePassingYear;
  final String collegeResult;
  final String learning1;
  final String learning2;
  final String learning1InDetail;
  final String learning2InDetail;
  const CustomEducationMobile({
    super.key,
    required this.imageAddress,
    required this.collegeName,
    required this.collegeDegree,
    required this.collegePassingYear,
    required this.collegeResult,
    required this.learning1,
    required this.learning2,
    required this.learning1InDetail,
    required this.learning2InDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.24,
              width: MediaQuery.of(context).size.width * 0.24,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                color: PortFolioColors.colorWhite,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    imageAddress,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: PortFolioColors.textColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      collegeName,
                      style: TextStyle(
                        color: PortFolioColors.colorOnPrimary,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),
                    Text(
                      collegePassingYear,
                      style: TextStyle(
                        color: PortFolioColors.colorOnPrimary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(height: 10),
                    Text(
                      collegeDegree,
                      style: TextStyle(
                        color: PortFolioColors.colorOnPrimary,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      collegeResult,
                      style: TextStyle(
                        color: PortFolioColors.colorOnPrimary,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  // border: Border.all(width: 0.5, color: Colors.grey.shade700),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18)),
                  color: PortFolioColors.colorWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        learning1,
                        style: TextStyle(
                          color: PortFolioColors.textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        maxLines: 5,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Text(
                        learning1InDetail,
                        maxLines: 6,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: PortFolioColors.textColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        learning2,
                        style: TextStyle(
                          color: PortFolioColors.textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        maxLines: 5,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        learning2InDetail,
                        maxLines: 6,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: PortFolioColors.textColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class CustomEducation extends StatelessWidget {
  final String imageAddress;
  final String collegeName;
  final String collegeDegree;
  final String collegePassingYear;
  final String collegeResult;
  final String learning1;
  final String learning2;
  final String learning1InDetail;
  final String learning2InDetail;

  const CustomEducation(
      {super.key,
      required this.imageAddress,
      required this.collegeName,
      required this.collegeDegree,
      required this.collegePassingYear,
      required this.collegeResult,
      required this.learning1,
      required this.learning2,
      required this.learning1InDetail,
      required this.learning2InDetail});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.22,
            width: MediaQuery.sizeOf(context).height * 0.22,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              color: PortFolioColors.colorWhite,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  imageAddress,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.35,
            width: MediaQuery.sizeOf(context).width * 0.60,
            child: Column(children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width * 0.60,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey.shade700),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  color: PortFolioColors.textColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.45,
                              child: Text(
                                collegeName,
                                style: TextStyle(
                                    color: PortFolioColors.colorOnPrimary,
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                        MediaQuery.sizeOf(context).height *
                                            0.03),
                                overflow: TextOverflow.ellipsis,
                              )),
                          SizedBox(
                              child: Text(
                            collegePassingYear,
                            style: TextStyle(
                                color: PortFolioColors.colorOnPrimary,
                                fontWeight: FontWeight.w500,
                                fontSize:
                                    MediaQuery.sizeOf(context).height * 0.025),
                            overflow: TextOverflow.clip,
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        collegeDegree,
                        style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize:
                                MediaQuery.sizeOf(context).height * 0.022),
                      ),
                      const SizedBox(
                        height: 05,
                      ),
                      Text(
                        collegeResult,
                        style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize:
                                MediaQuery.sizeOf(context).height * 0.022),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.60,
                height: MediaQuery.sizeOf(context).height * 0.20,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey.shade700),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18)),
                  color: PortFolioColors.colorWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 05,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.025,
                        child: Text(
                          learning1,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.02),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.065,
                        child: Text(
                          learning1InDetail,
                          maxLines: 2,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.w400,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.02),
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 05,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.025,
                        child: Text(
                          learning2,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.02),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.065,
                        child: Text(
                          learning2InDetail,
                          maxLines: 2,
                          style: TextStyle(
                              color: PortFolioColors.textColor,
                              fontWeight: FontWeight.w400,
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.02),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ]);
  }
}
