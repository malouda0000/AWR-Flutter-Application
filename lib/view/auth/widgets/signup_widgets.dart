// part of "package:awr_flutter_application/view/Auth/signup_screen.dart";
part of "../signup_screen.dart";

class _AuthCustomIcon extends StatelessWidget {
  const _AuthCustomIcon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Directionality (

                textDirection: TextDirection.ltr,

      child: Container(
        height: size.height * .5,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                child: Container(
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50))),
                        ),
                      ),
                      Center(
                        // child: Image.asset(AppImages.girlLoginScreenPng), 
                        child: Image.asset(AppImages.logoPng), 
                      ),
                    ]),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Image(
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
      ),
    );
  }
}

class _DoYouHaveAccount extends StatelessWidget {
  const _DoYouHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return const LogInScreen();
        }), (route) => false);
      },
      child: Text(
        style: const TextStyle(
          color: AppColors.mainColor,
          fontSize: 12,
        ),
        S.of(context).youHaveAccount,
      ),
    );
  }
}

class _OrSignUpWithGoogle extends StatelessWidget {
  const _OrSignUpWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        const Expanded(
          child: Divider(
            // thickness: 15,
            // height: 30,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          style: const TextStyle(
            color: AppColors.mainGreyColor,
            fontSize: 12,
          ),
          S.of(context).orByUsing,
        ),
        const SizedBox(
          width: 15,
        ),
        const Expanded(
          child: Divider(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}

class _GoogleIcons extends StatelessWidget {
  const _GoogleIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
