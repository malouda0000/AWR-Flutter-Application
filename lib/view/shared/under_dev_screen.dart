import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:awr_flutter_application/view/shared/bubles_background.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UnderDevScreen extends StatelessWidget {
  const UnderDevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        const BublesBackground(),
        Positioned(
            left: 20,
            top: 20,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFF000000),
                        offset: Offset.zero,
                        blurRadius: 0.0,
                      ),
                    ]),
                child: const FaIcon(
                  FontAwesomeIcons.backward,
                  color: AppColors.mainColor,
                ),
              ),
            )),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Card(
              // semanticContainer: false,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // shrinkWrap: true,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.developer_mode_rounded,
                      color: AppColors.mainColor,
                      size: size.width * .5,
                    ),
                    const SizedBox(
                      width: 30,
                      height: 30,
                    ),
                    Text(
                      // AppLocal.thisPageIsUnderDevelopment.tr,
                      "this page is under development",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.mainColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
