import 'package:flutter/material.dart';
import 'package:select_shop/core/constants/app_constants.dart';
import 'package:select_shop/core/constants/app_images.dart';
import 'package:select_shop/core/functions/nav_func.dart';
import 'package:select_shop/core/theme/colors.dart';
import 'package:select_shop/generated/l10n.dart';
import 'package:select_shop/l10n/app_localizations.dart';
import 'package:select_shop/view/Auth/login_screen.dart';
import 'package:select_shop/view/Auth/otp_screen.dart';
import 'package:select_shop/view/Shared/app_button.dart';
import 'package:select_shop/view/Shared/app_text_form_field.dart';
import 'package:select_shop/view/home/home_screen.dart';

TextEditingController _newPasswordTextEditingContorller =
    TextEditingController();
TextEditingController _confermNewPasswordTextEditingContorller =
    TextEditingController();

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: SizedBox(
          width: double.infinity,
          height: 800,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
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
                    style: AppConstants.customTitleTextStyle.copyWith(
                      color: AppColors.main2Color,
                    ),
                    S.of(context).resetPassword),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: [
                      AppTextFormField(
                        borderRaduis: 10,
                        controller: _newPasswordTextEditingContorller,
                        onChanged: (p0) {},
                        validator: (p0) {},
                        shadow: true,
                        hintText: S.of(context).newPassword,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppTextFormField(
                        borderRaduis: 10,
                        controller: _confermNewPasswordTextEditingContorller,
                        onChanged: (p0) {},
                        validator: (p0) {},
                        shadow: true,
                        hintText: S.of(context).confirmNewPassword,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                  title: S.of(context).confirm,
                  textColor: Colors.white,
                  width: double.infinity,
                  borderRadius: 10,
                  backgroundColor: AppColors.mainColor,
                  onTap: () {
                    // validate
                    // if not valid show toast
                    // contorller.resetpassword
                    // clear controller or the textEditingControllers
                    navigateToWithReplacement(context, const HomeScreen());
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
