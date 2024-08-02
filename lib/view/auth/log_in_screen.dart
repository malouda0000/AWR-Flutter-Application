// ignore_for_file: prefer_const_constructors

import 'package:awr_flutter_application/core/constants/app_constants.dart';
import 'package:awr_flutter_application/core/constants/app_images.dart';
import 'package:awr_flutter_application/core/functions/navigation.dart';
import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:awr_flutter_application/generated/I10n.dart';
import 'package:awr_flutter_application/view/auth/forget_password_screen.dart';
import 'package:awr_flutter_application/view/auth/signup_screen.dart';
import 'package:awr_flutter_application/view/home/home_screen.dart';
import 'package:awr_flutter_application/view/shared/app_toast.dart';
import 'package:awr_flutter_application/view/shared/loading_screen.dart';
import 'package:awr_flutter_application/view/shared/under_dev_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

TextStyle _customLocalTextStyle = const TextStyle(
  color: AppColors.grey2Color,
  height: .8,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

final TextEditingController phoneNumberTextEditingController =
    TextEditingController();
final TextEditingController passwordTextEditingController =
    TextEditingController();

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  @override
  void dispose() {
    // Dispose of the controllers when the state is disposed
    // _usernameController.dispose();
    // _passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // #### cusstom app icon for select shop #### //
              // Directionality(
              //     textDirection: TextDirection.ltr,
              //     child: _AuthCustomIcon(size: size)),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    boxShadow: AppConstants.theBoxShdow,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        AppImages.logoPng,
                      ),
                      fit: BoxFit.cover,
                    )),
                // child: Image.asset(
                //   AppImages.logoPng,
                //   height: 100,
                //   width: 100,
                // ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                // child: BlocConsumer<AuthBloc, AuthState>(
                //   listener: (context, state) {
                //     // TODO: implement listener

                //     if (state is AuthSuccessStateSignIn) {
                //       showToast(
                //           message:
                //               "${S.of(context).signInWelcome}: ${context.read<AuthBloc>().cashedUserName != null ? context.read<AuthBloc>().cashedUserName! : " "}");
                //       // AppCubit.get(context).getUser();
                //       navigateToWithReplacement(
                //         context,
                //         const HomeScreen(),
                //       );
                //     }

                //     if (state is AuthErrorStateSignIn) {
                //       // context.loaderOverlay.hide();
                //       showToast(
                //         message: state.errorMessage,
                //       );
                //     }
                //   },
                //   builder: (context, state) {
                //     if (state is AuthLoadingStateSignIn) {
                //       return const SizedBox(
                //           width: 200,
                //           height: 200,
                //           child: CustomLoadingScreen());
                //     }
                //     // else if (state is AuthErrorState) {
                //     //   return SizedBox(
                //     //       width: 200,
                //     //       height: 200,
                //     //       child: ErrorScreen(errorMessage: state.errorMessage));
                //     // }

                //     // else if (state is AuthInitialState )
                //     // {return CustomLoadingScreen();}

                //     // else if (state is AuthSuccessState )
                //     // {return _LoginBody();}

                //     else {
                //       return _LoginBody();
                //     }
                //   },
                // ),
                child: _LoginBody(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginBody extends StatefulWidget {
  const _LoginBody({
    super.key,
  });

  @override
  State<_LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<_LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
            style: TextStyle(
              color: AppColors.main2Color,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            S.of(context).welcomeToSelectShop),
        const SizedBox(
          height: 30,
        ),
        Form(
          key: signInFormKey,
          child: Column(
            children: [
              Container(
                // email or phone number
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        offset: Offset(0.0, 2.0),
                        blurRadius: 3.0,
                      ),
                    ],
                    color: Colors.white),
                child: TextFormField(
                  // name: S.of(context).email,
                  // validator: (value) {
                  //   // context.read<AuthBloc>().validateEmail(value);
                  //   context.read<AuthBloc>().customValidator(value);
                  // },

                  //                 validator: FormBuilderValidators.compose([
                  //      /// Makes this field required
                  //      FormBuilderValidators.required(),

                  //     /// Ensures the value entered is numeric - with a custom error message
                  //     FormBuilderValidators.numeric(errorText: 'La edad debe ser numérica.'),

                  //     /// Sets a maximum value of 70
                  //     FormBuilderValidators.max(70),

                  //     /// Include your own custom `FormFieldValidator` function, if you want
                  //     /// Ensures positive values only. We could also have used `FormBuilderValidators.min(0)` instead
                  //     (value) {
                  //          final number = int.tryParse(value!);
                  //         if (number == null) return null;
                  //         if (number < 0) return 'We cannot have a negative age';
                  //         return null;
                  //     },
                  // ]),

                  // validator: (emailOrPhoneNum) {
                  // emailOrPhoneNum!.length < 5 ? 'falsssse' : null;
                  // print(emailOrPhoneNum);
                  // emailOrPhoneNum == null
                  // },

// #### fully working validator #### //
// #### #### //
                  validator: (value) {
                    final phoneExp = RegExp(r'^\+?1?\d{9,15}$');
                    // print("vvvvvvvvvvvvvvvvvvvvvvvv${value.runtimeType}");
                    if (value == null || value.isEmpty) {
                      return 'Please enter a phone number';
                    }

                    if (value.length < 9) {
                      return 'Password must be at least 9 characters long';
                    }

                    if (!phoneExp.hasMatch(value)) {
                      return 'Please enter a trueee phone number';
                    }
                    return null;
                  },
                  controller: phoneNumberTextEditingController,
                  decoration: InputDecoration(
                    // the hint text was S.email but i change it for S.phoneNumber
                    hintText: S.of(context).phoneNum,
                    hintStyle: _customLocalTextStyle,
                    border: InputBorder.none,
                    contentPadding: EdgeInsetsDirectional.symmetric(
                      horizontal: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // password text field

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        offset: Offset(0.0, 2.0),
                        blurRadius: 3.0,
                      ),
                    ],
                    color: Colors.white),
                child: FormBuilderTextField(
                  // password text field
                  name: S.of(context).password,
                  controller: passwordTextEditingController,

// #### fully working validator #### //
// #### #### //
                  validator: (value) {
                    // final passwordExp = RegExp(
                    //     r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');

                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }

                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }

                    // if (!passwordExp.hasMatch(value)) {
                    //   return 'Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character';

                    //   // return UserExperinceHelper().showCustomDialog(
                    //   //   theContext: context,
                    //   //   confirmButtonTitle: S.of(context).confirm,
                    //   //   dialogContent:
                    //   //       'Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character',
                    //   // );
                    // }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: S.of(context).password,
                    hintStyle: _customLocalTextStyle,
                    border: InputBorder.none,
                    contentPadding: EdgeInsetsDirectional.symmetric(
                      horizontal: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      navigateToWithReplacement(
                          context, const ForgotPasswordScreen());
                    },
                    child: Text(
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 12,
                      ),
                      S.of(context).forgotPassword,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigateToWithReplacement(
                          context, const ForgotPasswordScreen());
                    },
                    child: Text(
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 12,
                      ),
                      S.of(context).resetPassword,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(
                  50,
                ),
                onTap: () {
                  // signInFormKey.currentState!.validate() == true
                  //     ? print("${signInFormKey.currentState!.validate()}")
                  //     : print("${signInFormKey.currentState!.validate()}");
                  // if (signInFormKey.currentState!.validate() == true) {
                  //   context.read<AuthBloc>().add(AuthLogInEvent(
                  //         theContext: context,
                  //       ));
                  // }

                  if (signInFormKey.currentState!.validate() == true) {
                    navigateToWithReplacement(context, HomeScreen());
                  }
                },
                child: Container(
                  height: 40,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.mainGreyColor,
                      borderRadius: BorderRadius.circular(
                        50,
                      )),
                  child: Text(
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      S.of(context).signIn),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _DepugSign(),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UnderDevScreen()));
                },
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                        (route) => false);
                  },
                  child: Text(
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 12,
                      ),
                      S.of(context).youDontHaveAccount),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Divider(
                      // thickness: 15,
                      // height: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    style: TextStyle(
                      color: AppColors.mainGreyColor,
                      fontSize: 12,
                    ),
                    S.of(context).orByUsing,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UnderDevScreen()));
                    },
                    child: const Image(
                        image: AssetImage(
                      AppImages.facebookPng,
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UnderDevScreen()));
                    },
                    child: const Image(
                        image: AssetImage(
                      AppImages.googlePng,
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AuthCustomIcon extends StatelessWidget {
  const _AuthCustomIcon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: size.height * .5,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                // width: size.width * .45,
                width: 200,
                height: size.height * .5,
                decoration: const BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                    60,
                  )),
                ),
              )),
          Positioned(
            width: size.width,
            height: size.height * .45,
            right: 0,
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Stack(children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 435,
                        height: 300,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            color: Colors.grey[350],
                            // borderRadius: const BorderRadius.only(
                            //   topRight: Radius.circular(50),
                            //   bottomRight: Radius.circular(50),
                            // ),

                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        // child: Image.asset(
                        //   AppImages.girlLoginScreen,
                        // ),
                      ),
                    ),
                    // Center(child: Image.asset(AppImages.girlLoginScreenPng)),
                    Center(
                        child: Image.asset(
                      AppImages.logoPng,
                    )),
                  ]),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Image(
                  // width: 10,
                  // height: 10,
                  image: AssetImage(
                    AppImages.logoPng,
                  ),
                ),
                const SizedBox(
                  width: AppConstants.theDefBaddingFifteenPixl,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _DepugSign extends StatelessWidget {
  const _DepugSign({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(
        50,
      ),
      onTap: () {
        navigateToWithReplacement(context, const HomeScreen());
      },
      child: Container(
        height: 40,
        width: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.mainGreyColor,
            borderRadius: BorderRadius.circular(
              50,
            )),
        child: Text(
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            "debug sign"),
      ),
    );
  }
}
