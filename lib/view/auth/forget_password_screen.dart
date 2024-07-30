// ignore_for_file: prefer_const_constructors

import 'package:awr_flutter_application/core/constants/app_constants.dart';
import 'package:awr_flutter_application/core/constants/app_images.dart';
import 'package:awr_flutter_application/core/functions/navigation.dart';
import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:awr_flutter_application/view/auth/log_in_screen.dart';
import 'package:awr_flutter_application/view/auth/otp_screen.dart';
import 'package:awr_flutter_application/view/shared/app_button.dart';
import 'package:awr_flutter_application/view/shared/app_text_form_feild.dart';
import 'package:flutter/material.dart';

TextEditingController _emailTextEditingContorller = TextEditingController();

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: SizedBox(
          width: double.infinity,
          height: 600,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(width: 160, AppImages.logoPng),
                const SizedBox(
                  height: 20,
                ),
                Text(
                    style: AppConstants.customTitleTextStyle,
                    S.of(context).resetPassword),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  style: TextStyle(
                    color: AppColors.mainGreyColor,
                    fontSize: 20,
                  ),
                  S.of(context).enterEmailToResetOne,
                ),
                Text(
                  style: TextStyle(
                    color: AppColors.mainGreyColor,
                    fontSize: 20,
                  ),
                  S.of(context).enterEmailToResetTwo,
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: AppTextFormField(
                    controller: _emailTextEditingContorller,
                    onChanged: (p0) {},
                    validator: (p0) {},
                    shadow: true,
                    hintText: S.of(context).email,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                  title: S.of(context).sendCode,
                  textColor: Colors.white,
                  width: double.infinity,
                  backgroundColor: AppColors.mainColor,
                  onTap: () {
                    // validate
                    // contorller.resetpassword

                    navigateToWithReplacement(context, const OtpScreen());
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      navigateToWithReplacement(context, const LogInScreen());
                    },
                    child: Text(
                      style: AppConstants.customTitleTextStyle.copyWith(
                        color: AppColors.mainGreyColor,
                        fontSize: 20,
                      ),
                      S.of(context).backToSignIn,
                    )),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
