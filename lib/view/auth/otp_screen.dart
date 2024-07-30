import 'package:flutter/material.dart';
import 'package:select_shop/core/constants/app_constants.dart';
import 'package:select_shop/core/constants/app_images.dart';
import 'package:select_shop/core/functions/nav_func.dart';
import 'package:select_shop/core/theme/colors.dart';
import 'package:select_shop/generated/l10n.dart';
import 'package:select_shop/l10n/app_localizations.dart';
import 'package:select_shop/view/Auth/login_screen.dart';
import 'package:select_shop/view/Auth/new_password_screen.dart';
import 'package:select_shop/view/Shared/app_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: SizedBox(
          width: double.infinity,
          height: 600,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, 
            vertical: 20, 
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
                    color: AppColors.grey2Color,
                    fontSize: 20,
                  ),
                  S.of(context).otpCodeSended,
                ),
                Text(
                    style: TextStyle(
                      color: AppColors.grey2Color,
                      fontSize: 20,
                    ),
                    'mhli.outlook.sa@gmail.com'),
                const SizedBox(
                  height: 20,
                ),
                OtpTextField(
                  numberOfFields: 4,
                  // borderColor: AppColors.grey2Color,454
                  showFieldAsBox: true,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 60,
                  fieldWidth: 60,
                  enabledBorderColor: AppColors.greyColor,
                  focusedBorderColor: AppColors.mainColor,

                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        });
                  }, // end onSubmit
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                  title: S.of(context).sendCode,
                  textColor: Colors.white,
                  borderRadius: 10,
                  width: double.infinity,
                  backgroundColor: AppColors.mainColor,
                  onTap: () {
                    // validate
                    // make sure the otp length is 4, if it's not then show custom
                    // toast saying the otp is shorter
                    // contorller.check otp

                    navigateToWithReplacement(
                        context, const NewPasswordScreen());
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
                        color: AppColors.grey2Color,
                        fontSize: 14,
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
