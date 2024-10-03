import 'package:flutter/material.dart';
import 'package:pandit_ji/styles/screen_utils.dart';
import 'package:pandit_ji/styles/style.dart';
import 'package:pandit_ji/ui/screens/home/nav_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final screenUtils = ScreenUtils(context);

    return Scaffold(
      // backgroundColor: AppColors().accentColour,
      body: Center(
        child: Container(
          width: screenUtils.responsiveWidth(0.9),
          color: AppColors().backgroundColour,
          // main column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // heading text coloumn
                  children: [
                    SizedBox(
                      height: screenUtils.responsiveHeight(0.04),
                    ),
                    // india's hona chahahiye
                    Text(
                      "India",
                      style: AppTextStyles.headline(
                        context,
                        screenUtils.responsiveFontSize(0.18),
                        null,
                        0.8,
                      ),
                    ),
                    Text(
                      "First",
                      style: AppTextStyles.headline(
                        context,
                        screenUtils.responsiveFontSize(0.2),
                        null,
                        0.8,
                      ),
                    ),
                    Text(
                      "PANDIT",
                      style: AppTextStyles.headlineItalics(
                        context,
                        screenUtils.responsiveFontSize(0.22),
                        AppColors().primaryColour,
                        0.9,
                      ),
                    ),
                  ],
                ),
              ),
              // bottom container for login
              Column(
                children: [
                  SizedBox(
                    height: screenUtils.responsiveHeight(0.08),
                  ),
                  Container(
                    // height: screenUtils.responsiveHeight(0.4),
                    width: screenUtils.responsiveWidth(0.9),
                    decoration: BoxDecoration(
                      color: AppColors().secondaryColour,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    // main column
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Login",
                          style:
                              AppTextStyles.headline(context, null, null, 1.5),
                        ),
                        // coloumn for text feild
                        Column(
                          children: [
                            SizedBox(
                              width: screenUtils.responsiveWidth(0.8),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Email or Phone",
                                  labelStyle:
                                      AppTextStyles.body(context, 20, null),
                                  fillColor: AppColors().backgroundColour,
                                  filled: true,
                                  hoverColor: AppColors().primaryColour,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 10.0),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenUtils.responsiveHeight(0.02),
                            ),
                            // SizedBox(
                            //   width: screenUtils.responsiveWidth(0.8),
                            //   child: TextField(
                            //     decoration: InputDecoration(
                            //       labelText: "Password",
                            //       labelStyle: AppTextStyles.body(context, 20, null),
                            //       fillColor: AppColors().backgroundColour,
                            //       filled: true,
                            //       hoverColor: AppColors().primaryColour,
                            //       border: OutlineInputBorder(
                            //         borderSide: const BorderSide(width: 10.0),
                            //         borderRadius: BorderRadius.circular(15),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: screenUtils.responsiveHeight(0.02),
                            // ),
                            Container(
                              width: screenUtils.responsiveWidth(0.8),
                              height: screenUtils.responsiveHeight(0.08),
                              decoration: BoxDecoration(
                                color: AppColors().accentColour,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors().accentColour,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                child: Text(
                                  "Sign-in",
                                  style: AppTextStyles.body(
                                    context,
                                    25,
                                    AppColors().backgroundColour,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const NavBar(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: screenUtils.responsiveHeight(
                                0.02,
                              ),
                            ),
                          ],
                        ),
                        // row for register button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "New User? ",
                              style: AppTextStyles.body(context, 20, null),
                            ),
                            Text(
                              "Register ",
                              style: AppTextStyles.headline(
                                  context, 20, null, null),
                            ),
                            Text(
                              "here  ",
                              style: AppTextStyles.body(context, 20, null),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenUtils.responsiveHeight(0.02),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
