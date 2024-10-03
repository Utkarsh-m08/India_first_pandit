import 'package:flutter/material.dart';
import 'package:pandit_ji/styles/screen_utils.dart';
import 'package:pandit_ji/styles/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// const List<String> listPopServices = <String>[
//   'All',
//   'Puja',
//   'Ceremony',
//   'Havan',
//   'Festival'
// ];
// String _popServicesDropdownValue = listPopServices.first;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenUtils = ScreenUtils(context);

    return Scaffold(
      backgroundColor: AppColors().backgroundColour,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: screenUtils.responsiveHeight(0.04),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upcomming",
                        style: AppTextStyles.headline(context, 40, null, null),
                      ),
                      Text(
                        " Festivals",
                        style: AppTextStyles.headlineItalics(
                          context,
                          70,
                          AppColors().primaryColour,
                          null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenUtils.responsiveHeight(0.02),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenUtils.responsiveHeight(0.3),
                // width: screenUtils.responsiveWidth(0.9),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: screenUtils.responsiveWidth(1.2),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/bhagwanPic1.jpg"),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment(-0.9, 0.5),
                        child: Text(
                          "Diwali",
                          style:
                              AppTextStyles.headline(context, null, null, null),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenUtils.responsiveWidth(0.02),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/bhagwanPic1.jpg"),
                    ),
                    SizedBox(
                      width: screenUtils.responsiveWidth(0.02),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("assets/images/bhagwanPic1.jpg"),
                    ),
                    SizedBox(
                      width: screenUtils.responsiveWidth(0.02),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: Image.asset("assets/images/football.jpg"),
                    // ),
                    // SizedBox(
                    //   width: screenUtils.responsiveWidth(0.02),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: Image.asset("assets/images/table_tennis.jpg"),
                    // ),
                    SizedBox(
                      width: screenUtils.responsiveWidth(0.02),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenUtils.responsiveHeight(0.04),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: screenUtils.responsiveHeight(0.006),
                    width: screenUtils.responsiveWidth(0.2),
                    color: AppColors().accentColour,
                  ),
                  Text(
                    "Popular Services",
                    style: AppTextStyles.headline(context, 24, null, null),
                  ),
                  Container(
                    height: screenUtils.responsiveHeight(0.006),
                    width: screenUtils.responsiveWidth(0.2),
                    color: AppColors().accentColour,
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Container(
              //       // height: screenUtils.responsiveHeight(0.02),
              //       color: AppColors().backgroundColour,
              //       child: DropdownMenu<String>(
              //         textStyle: AppTextStyles.body(
              //           context,
              //           21,
              //           AppColors().textColour,
              //         ),
              //         initialSelection: listPopServices.first,
              //         onSelected: (String? value) {
              //           // This is called when the user selects an item.
              //           setState(
              //             () {
              //               _popServicesDropdownValue = value!;
              //             },
              //           );
              //         },
              //         dropdownMenuEntries:
              //             listPopServices.map<DropdownMenuEntry<String>>(
              //           (String value) {
              //             return DropdownMenuEntry<String>(
              //               value: value,
              //               label: value,
              //             );
              //           },
              //         ).toList(),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: screenUtils.responsiveHeight(0.02),
              ),
              Container(
                width: screenUtils.responsiveWidth(0.9),
                height: screenUtils.responsiveHeight(0.25),
                decoration: BoxDecoration(
                  color: AppColors().accentColour,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Align(
                  alignment: Alignment(0, 0.8),
                  child: Text(
                    "Rudrabhishek Puja",
                    style: AppTextStyles.headline(
                      context,
                      screenUtils.responsiveFontSize(0.06),
                      AppColors().backgroundColour,
                      null,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenUtils.responsiveHeight(0.02),
              ),
              Container(
                width: screenUtils.responsiveWidth(0.9),
                height: screenUtils.responsiveHeight(0.25),
                decoration: BoxDecoration(
                  color: AppColors().primaryColour,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Align(
                  alignment: Alignment(0, 0.8),
                  child: Text(
                    "Satyanarayan Puja",
                    style: AppTextStyles.headline(
                      context,
                      screenUtils.responsiveFontSize(0.06),
                      AppColors().textColour,
                      null,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenUtils.responsiveHeight(0.02),
              ),
              Container(
                width: screenUtils.responsiveWidth(0.9),
                height: screenUtils.responsiveHeight(0.25),
                decoration: BoxDecoration(
                  color: AppColors().secondaryColour,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
