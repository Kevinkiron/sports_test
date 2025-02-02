import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sports/app/modules/login/views/login_view_section.dart';
import 'package:sports/app/modules/login/views/register_views/your_society_view.dart';
import 'package:sports/app/routes/app_pages.dart';
import 'package:sports/utils/app_button.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/custom_textfield.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

import '../../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackBackground,
        appBar: AppBar(
          backgroundColor: AppColors.blackBackground,
          title: Kstyles().bold(text: "Register", size: 18),
          leading: SizedBox(),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextfield(
                hintText: "Name",
                prefix: Icon(
                  Icons.person_2_outlined,
                  size: 20,
                  color: AppColors.textGrey,
                ),
              ),
              15.height,
              CustomTextfield(
                hintText: "Email",
                prefix: Icon(
                  Icons.email_outlined,
                  size: 20,
                  color: AppColors.textGrey,
                ),
              ),
              15.height,
              CustomTextfield(
                hintText: "Password",
                prefix: Icon(
                  Icons.key_rounded,
                  size: 20,
                  color: AppColors.textGrey,
                ),
                suffix: Icon(
                  Icons.visibility,
                  color: AppColors.textGrey,
                  size: 20,
                ),
              ),
              15.height,
              CustomTextfield(
                hintText: "Confirm Password",
                prefix: Icon(
                  Icons.key_rounded,
                  size: 20,
                  color: AppColors.textGrey,
                ),
                suffix: Icon(
                  Icons.visibility,
                  color: AppColors.textGrey,
                  size: 20,
                ),
              ),
              30.height,
              AppButton(
                onTap: () {
                  Get.to(() => YourSocietyView());
                },
                text: "Register",
              ),
              10.height,
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 12,
                          color: AppColors.backgroundColor,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(text: "Already have an account"),
                          TextSpan(
                            recognizer: (TapGestureRecognizer()
                              ..onTap = () => Get.to(() => LoginViewSection())),
                            text: "\t Login",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12,
                              color: AppColors.backgroundColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ])),
              ),
              SizedBox(
                height: Constants.height * 0.09,
              ),
              Column(
                children: [
                  AppButton(
                    onTap: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                    text: "Continue As Guest",
                    textColor: AppColors.backgroundColor,
                    color: AppColors.buttonColor,
                  ),
                  10.height,
                  Kstyles()
                      .reg(size: 12, text: "or", color: AppColors.textGrey),
                  10.height,
                  AppButton(
                    onTap: () {},
                    iocnIs: true,
                    text: "Sign up With Apple",
                    textColor: AppColors.black,
                    color: AppColors.backgroundColor,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
