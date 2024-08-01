// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:awr_flutter_application/view/shared/under_dev_screen.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:select_shop/view/search/search_screen.dart';
//
//
// part '../Shared/drawer.dart';
// part 'widgets/custom_baner.dart';
// part 'body.dart';
// part 'package:select_shop/view/search/search_screen.dart';

TextStyle _customTitleTextStyle = TextStyle(
  color: AppColors.mainColor,
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

TextEditingController _searchTextEditingController =
    new TextEditingController();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final homeBloc = BlocProvider.of<HomeBloc>(context);

    return Hero(
        tag: "search",
        child: Scaffold(
          body: SafeArea(
            child: Scaffold(
              // drawer: CustomDrawer(
              //   theHomeBuildContext: context,
              // ),
              drawer: Drawer(
                // drawer: Drawer(
                child: ListView(
                  children: [
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
              // appBar: CustomAppBar(),
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: AppColors.mainColor,
                  ),
                ),
                title: Text(
                  // AppLocalizations.of(context)!.home,
                  "AWR",
                  style: _customTitleTextStyle,
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UnderDevScreen()));
                    },
                    icon: Icon(
                      Icons.search,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),

              // body: SafeArea(
              //   child: BlocBuilder<BottomNavBloc, BottomNavState>(
              //     builder: (context, state) {
              //       return BlocBuilder<HomeBloc, HomeState>(
              //         builder: (context, state) {
              //           if (context.read<BottomNavBloc>().activePageNumber == 1) {
              //             return _HomeBody();
              //           } else if (context.read<BottomNavBloc>().activePageNumber ==
              //               2) {
              //             return CategoriesScreen();
              //           } else if (context.read<BottomNavBloc>().activePageNumber ==
              //               3) {
              //             return CartScreen();
              //           } else if (context.read<BottomNavBloc>().activePageNumber ==
              //               4) {
              //             return FavoureitesScreen();
              //           } else if (context.read<BottomNavBloc>().activePageNumber ==
              //               5) {
              //             return SettingsScreen();
              //           } else {
              //             return CustomLoadingScreen();
              //           }
              //         },
              //       );
              //     },
              //   ),
              // ),

              //   floatingActionButtonLocation:
              //       FloatingActionButtonLocation.centerDocked,
              //   floatingActionButton: CustomFloatingAcctionButton(),
              //   bottomNavigationBar: CustomBottomNavBar(),
              //   resizeToAvoidBottomInset: false, // Set this to false
            ),
          ),
        ));
  }
}
