import 'package:awr_flutter_application/generated/I10n.dart';
import 'package:awr_flutter_application/view/auth/log_in_screen.dart';
import 'package:awr_flutter_application/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

String? globalCachedUserToken;
String? globalCachedUserLang;
String? globalCachedUserName;
String? globalCachedUserID;
String? globalCachedUserPhoneNum;
//  const String globalDefaltCachedNetworkImage = "https://www.istockphoto.com/illustrations/green-shopping-cart-icon";
const String globalDefaltCachedNetworkImage =
    "https://cdn4.iconfinder.com/data/icons/social-media-2070/140/_shopify-512.png";

// final GlobalKey mainAppKey = GlobalKey();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
        body: SafeArea(
            child: globalCachedUserToken == null || globalCachedUserToken == ""
                ? const LogInScreen()
                : const HomeScreen()));
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
