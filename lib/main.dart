// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:awr_flutter_application/core/themes/light_theme.dart';
import 'package:awr_flutter_application/firebase_options.dart';
import 'package:awr_flutter_application/generated/I10n.dart';
import 'package:awr_flutter_application/view/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

String? globalCachedUserToken;
String? globalCachedUserLang;
String? globalCachedUserName;
String? globalCachedUserID;
String? globalCachedUserPhoneNum;
//  const String globalDefaltCachedNetworkImage = "https://www.istockphoto.com/illustrations/green-shopping-cart-icon";
const String globalDefaltCachedNetworkImage =
    "https://cdn4.iconfinder.com/data/icons/social-media-2070/140/_shopify-512.png";

NotchBottomBarController notchBottomBarController = NotchBottomBarController();
PageController thePageController = PageController(
  initialPage: 0,
  keepPage: true,
);
// final GlobalKey mainAppKey = GlobalKey();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(
    fileName: ".env",
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: customLightTheme,
      supportedLocales: const [Locale('en'), Locale('ar')],
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (deviceLocale != null &&
              deviceLocale.languageCode == locale.languageCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    //  required this.title
  });

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
// AppLocalizations appLocalizationsOfContext =  AppLocalizations.of(context)!;

    return Scaffold(
      drawer: Drawer(
        // drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.mainColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: AppColors.mainColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Text(
                  //   "AWR",
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "awr@gamil.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: SafeArea(
      //     child: globalCachedUserToken == null || globalCachedUserToken == ""
      //         ? const LogInScreen()
      //         : const HomeScreen()),

      body: const SafeArea(
        child: HomeScreen(),
      ),
      // bottomNavigationBar: AnimatedNotchBottomBar(
      //   elevation: 3,
      //   // removeMargins: true,

      //   notchBottomBarController: notchBottomBarController,
      //   onTap: (value) {
      //     null;
      //   },
      //   kIconSize: 25,
      //   kBottomRadius: 10,
      //   // pageController: thePageController,
      //   bottomBarItems: [
      //     const BottomBarItem(
      //       inActiveItem: Icon(
      //         Icons.home_filled,
      //         color: Colors.blueGrey,
      //       ),
      //       activeItem: Icon(
      //         Icons.home_filled,
      //         color: Colors.blueAccent,
      //       ),
      //       itemLabel: 'Page 1',
      //     ),
      //     const BottomBarItem(
      //       inActiveItem: Icon(
      //         Icons.star,
      //         color: Colors.blueGrey,
      //       ),
      //       activeItem: Icon(
      //         Icons.star,
      //         color: Colors.blueAccent,
      //       ),
      //       itemLabel: 'Page 2',
      //     ),

      //     ///svg item
      //     // BottomBarItem(
      //     //     inActiveItem: SvgPicture.asset(
      //     //       'assets/search_icon.svg',
      //     //        color: Colors.blueGrey,
      //     //    ),
      //     //    activeItem: SvgPicture.asset(
      //     //       'assets/search_icon.svg',
      //     //        color: Colors.black,
      //     //    ),
      //     //    itemLabel: 'Page 3',
      //     // ),
      //   ],
      // ),
    );
    // return const Scaffold(body: SafeArea(child: SignupScreen()));
    // return const Scaffold(body: SafeArea(child: LogInScreen()));
    // return const Scaffold(
    // body: SafeArea(child: ChoseLanguageScreen(commingFromSettings: false)));
    // return Scaffold(body: SafeArea(child: ErrorScreen(errorMessage: 'test')));
    // return const Scaffold(body: SafeArea(child: HomeScreen()));
    // return const Scaffold(body: SafeArea(child: ProductDetailsScreen()));
    // return const Scaffold(body: SafeArea(child: ProductsScreen()));
    // return const Scaffold(body: SafeArea(child: CheckOutScreen()));
    // return const Scaffold(body: SafeArea(child: ChoosePaymentMethodScreen()));
    // return const Scaffold(body: SafeArea(child: TrackOrderScreen()));
    // return const Scaffold(body: SafeArea(child: EditUserProfileScreen()));
    // return const Scaffold(body: SafeArea(child: UserLocationsScreen()));
    // return const Scaffold(body: SafeArea(child: DiscountsScreen()));
    // return Scaffold(
    //     body: SafeArea(
    //         child: PaymentScreen(
    //   amount: 350
    // )));

    // return const Scaffold(
    //     body: SafeArea(
    //         child: ProductsOfCategoryScreen(
    //   mainCategoryId: 1,
    // )));

    // return const Scaffold(body: SafeArea(child: SearchScreen()));
    // return const Scaffold(body: SafeArea(child: UserLocationsScreen()));
    // return const Scaffold(body: SafeArea(child: CreateNewLocationScreen()));
    // return const Scaffold(body: SafeArea(child: CategoriesScreen()));
  }
}
