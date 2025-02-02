import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports/app/modules/login/views/register_views/register.dart';
import 'package:sports/app/routes/app_pages.dart';
import 'package:sports/utils/app_button.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

import '../../../../utils/custom_textfield.dart';

class LoginViewSection extends StatelessWidget {
  const LoginViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackBackground,
        appBar: AppBar(
          backgroundColor: AppColors.blackBackground,
          title: Kstyles().bold(text: "Login", size: 18),
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.backgroundColor,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
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
              SizedBox(
                height: Constants.height * 0.2,
              ),
              AppButton(
                onTap: () {
                  Get.offAllNamed(Routes.HOME);
                },
                text: "Login",
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
                          TextSpan(text: "Doesn\'t have an account"),
                          TextSpan(
                            text: "\t Register",
                            recognizer: (TapGestureRecognizer()
                              ..onTap = () => Get.to(() => LoginView())),
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
                    onTap: () {},
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
