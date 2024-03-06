import 'package:flutter/material.dart';
import '../utils/const.dart';

class CustomExperienceMobile extends StatelessWidget {
  final String companyName;
  final String companyPosition;
  final String companyDuration;
  final String companyLocation;
  final String learning1;
  final String learning2;
  final String companyImageAddress;

  const CustomExperienceMobile({
    required this.companyName,
    required this.companyPosition,
    required this.companyDuration,
    required this.companyLocation,
    required this.learning1,
    required this.learning2,
    required this.companyImageAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  companyImageAddress,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              // border: Border.all(width: 0.5, color: Colors.grey.shade700),
              borderRadius: BorderRadius.circular(18),
              color: PortFolioColors.textColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // width: MediaQuery.of(context).size.width * 0.42,
                        child: Text(
                          companyName,
                          style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(
                      //   width: MediaQuery.of(context).size.width * 0.42,
                      //   child: Text(
                      //     companyName,
                      //     style: TextStyle(
                      //       color: PortFolioColors.textColor,
                      //       fontWeight: FontWeight.w600,
                      //       fontSize: 16,
                      //     ),
                      //     overflow: TextOverflow.ellipsis,
                      //   ),
                      // ),
                      SizedBox(
                        // width: MediaQuery.of(context).size.width * 0.15,
                        child: Text(
                          companyDuration,
                          style: TextStyle(
                            color: PortFolioColors.colorOnPrimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: Text(
                        companyPosition,
                        style: TextStyle(
                          color: PortFolioColors.colorOnPrimary,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Text(
                        companyLocation,
                        style: TextStyle(
                          color: PortFolioColors.colorOnPrimary,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.grey.shade700),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    ),
                    color: PortFolioColors.colorWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          learning1,
                          style: TextStyle(
                            color: PortFolioColors.textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          learning2,
                          style: TextStyle(
                            color: PortFolioColors.textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomExperience extends StatelessWidget {
  final String companyImageAddress;
  final String companyName;
  final String companyPosition;
  final String companyDuration;
  final String companyLocation;
  final String learning1;
  final String learning1InDetail;
  final String learning2;
  final String learning2InDetail;
  const CustomExperience(
      {super.key,
      required this.companyImageAddress,
      required this.companyName,
      required this.companyPosition,
      required this.companyDuration,
      required this.companyLocation,
      required this.learning1,
      required this.learning1InDetail,
      required this.learning2,
      required this.learning2InDetail});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            // height: MediaQuery.sizeOf(context).height * 0.18,
            width: MediaQuery.sizeOf(context).width * 0.60,
            child: Column(children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.10,
                width: MediaQuery.sizeOf(context).width * 0.60,
                decoration: BoxDecoration(
                  // border: Border.all(width: 0.5, color: Colors.grey.shade700),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  color: PortFolioColors.textColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.42,
                              child: Text(
                                companyName,
                                style: TextStyle(
                                    color: PortFolioColors.colorOnPrimary,
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                        MediaQuery.sizeOf(context).height *
                                            0.03),
                                overflow: TextOverflow.ellipsis,
                              )),
                          SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.15,
                              child: Text(
                                companyDuration,
                                style: TextStyle(
                                    color: PortFolioColors.colorOnPrimary
                                        .withOpacity(.85),
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.sizeOf(context).height *
                                            0.022),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.end,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 05,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.42,
                            child: Text(
                              companyPosition,
                              style: TextStyle(
                                  color: PortFolioColors.colorOnPrimary
                                      .withOpacity(.85),
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery.sizeOf(context).height *
                                      0.022),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            child: Text(
                              companyLocation,
                              style: TextStyle(
                                  color: PortFolioColors.colorOnPrimary
                                      .withOpacity(.85),
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery.sizeOf(context).height *
                                      0.022),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.end,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.60,
                // height: MediaQuery.sizeOf(context).he ight * 0.12,
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
                      Text(
                        learning1,
                        style: TextStyle(
                            color: PortFolioColors.textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        learning1InDetail,
                        style: TextStyle(
                            color: PortFolioColors.textColor,
                            // fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      const SizedBox(
                        height: 05,
                      ),
                      Text(
                        learning2,
                        style: TextStyle(
                            color: PortFolioColors.textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      Text(
                        learning2InDetail,
                        style: TextStyle(
                            color: PortFolioColors.textColor,
                            // fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.sizeOf(context).height * 0.02),
                      ),
                      const SizedBox(
                        height: 05,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.20,
            width: MediaQuery.sizeOf(context).height * 0.20,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              color: PortFolioColors.colorWhite,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(companyImageAddress)),
            ),
          ),
        ]);
  }
}
